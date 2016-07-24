# -*- coding:utf-8 -*-
import requests
from bs4 import BeautifulSoup
import mysql

class Zju_spider:

    #初始化
    def __init__(self):
        self.siteURL = "http://www.career.zju.edu.cn/ejob/zczphxxmorelogin.do"
        self.dataReq = {}
        self.front = "http://www.career.zju.edu.cn/ejob/"
        self.school = "zju"
        self.mysql = mysql.Mysql()
        print "Zju_spider init successed!"
        
    #获得HTML
    def getHtml(self, siteURL, dataReq):
        html = requests.post(siteURL, dataReq)
        return html.text
    
    def getJob(self, jobinfo):
    	link = self.front + jobinfo.find('a').get('href')
        title = jobinfo.find_all('td')[0].get_text(strip=True)
        time = ':'.join(" ".join(jobinfo.find_all('td')[2].get_text(strip=True).split()).split(u"："))
        place = jobinfo.find_all('td')[1].get_text(strip=True)
        return [title, place, link, time]
#查询2页记录
#ZJU pagesize为30。
    def storeJob(self,pageNum):
        for page in range(1,pageNum):
            self.dataReq = {'pages.currentPage':str(page)}
            html = self.getHtml(self.siteURL, self.dataReq)
            soup = BeautifulSoup(html,'lxml')
            for jobinfo in soup.find_all(class_="con"):
        	job = self.getJob(jobinfo)
                job_dict = {
                                'title': job[0],
                                'place': job[1],
                                'link': job[2],
                                'time': job[3],
                                'school': self.school 
                            }
                self.mysql.insertData("starkjobs",job_dict)

zju_spider = Zju_spider()
zju_spider.storeJob(3)
