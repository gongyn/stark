# -*- coding:utf-8 -*-
import requests
from bs4 import BeautifulSoup
import mysql

class Ustc_spider:

 #初始化
    def __init__(self):
        self.siteURL = "http://job.ustc.edu.cn/list.php"
        self.dataReq = {}
        self.front = "http://job.ustc.edu.cn/"
        self.school = "ustc"
        self.mysql = mysql.Mysql()
        print "Ustc_spider init successed!"
        
    #获得count条记录的HTML
    def getHtml(self, siteURL, dataReq):
        html = requests.post(siteURL, dataReq)
        return html.text

#获得招聘详情
    def getJob(self, jobinfo):
        link = self.front + jobinfo.find('a').get('href')
        title = jobinfo.find('a').get_text(strip=True)
        time = jobinfo.find(class_ = 'zhiwei').get_text(strip=True)
        place = jobinfo.find(class_ = 'zhuanye').get_text(strip=True)
        return [title, place, link, time]

#ustc将未举办和已举办的招聘会放在一页中
#因为目前没有未举办的招聘会，暂未知道每页有多少记录
#查询[1,4)页
    def storeJob(self,pageNum):
        for page in range(1,pageNum):
            siteURL =self.siteURL + '?pg=' + str(page) + '&MenuID=002001'
            html = self.getHtml(siteURL, self.dataReq)
            soup = BeautifulSoup(html,'lxml')
            for jobinfo in soup.find_all(class_='Joplistone')[1].find_all('li'):
                job = self.getJob(jobinfo)
                job_dict = {
                                'title': job[0],
                                'place': job[1],
                                'link': job[2],
                                'time': job[3],
                                'school': self.school 
                            }
                self.mysql.insertData("starkjobs",job_dict)

ustc_spider = Ustc_spider()
ustc_spider.storeJob(4)
<<<<<<< HEAD
            
=======
>>>>>>> 78518a8c864369b32fee817c3ad4b55964e81951
