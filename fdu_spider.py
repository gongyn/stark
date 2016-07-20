# -*- coding:utf-8 -*-

import requests
from bs4 import BeautifulSoup
import mysql

class Fdu_spider:

    #初始化
    def __init__(self):
        self.siteURL = "http://www.career.fudan.edu.cn/jsp/career_talk_list.jsp"
        self.front = "http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key="
        self.school = "fdu"
        self.mysql = mysql.Mysql()
        print "Fdu_spider init successed!"
        
    #获得count条记录的HTML
    def getHtml(self, count):
        html = requests.post(self.siteURL, data = {'count':str(count)})
        return html.text
    
    #获得招聘详情
    def getJob(self, jobinfo):
        link = self.front + jobinfo.get('key')
        title = jobinfo.find(class_ = 'tab1_bottom1').get_text()
        time = jobinfo.find(class_ = 'tab1_bottom3').get_text() + ' '+ jobinfo.find(class_ = 'tab1_bottom4').get_text().split('-')[0]
        place = jobinfo.find(class_ = 'tab1_bottom5').get_text()
        return [title, place, link, time]

    #存储count条招聘信息
    def storeJob(self,count):
        html = self.getHtml(count)
        soup = BeautifulSoup(html)
        for jobinfo in soup.find_all(id = 'tab1_bottom'):
            job = self.getJob(jobinfo)
            job_dict = {
                            'title': job[0],
                            'place': job[1],
                            'link': job[2],
                            'time': job[3],
                            'school': self.school 
                        }
            self.mysql.insertData("starkjobs",job_dict)

fdu_spider = Fdu_spider()
fdu_spider.storeJob(100)
