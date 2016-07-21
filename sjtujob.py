# -*- coding:utf-8 -*-
import requests
from bs4 import BeautifulSoup
import mysql
import re

class Sju_spider:

    #初始化
    def __init__(self):
        self.siteURL = "http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=searchXjhxx"
        self.dataReq = {'xjhType':'yjb',}
        self.front = "http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id="
        self.school = "sju"
        self.mysql = mysql.Mysql()
        print "Sju_spider init successed!"
        
    #获得HTML
    def getHtml(self, siteURL, dataReq):
        html = requests.post(siteURL, dataReq)
        return html.text
    
    def getJob(self, jobinfo):
        pattern = re.compile('\'(.*?)\'',re.S)
        link = self.front + re.findall(pattern,jobinfo.find('a').get('onclick'))[0]
        title = jobinfo.find_all('div')[0].get_text(strip=True)
        time = jobinfo.find_all('div')[3].get_text(strip=True) + ' ' + ':'.join(jobinfo.find_all('div')[4].get_text(strip=True).split('-')[0].split(u"："))
        place = jobinfo.find_all('div')[2].get_text(strip=True)
        return [title, place, link, time]
#查询2页记录
#ZJU pagesize为30。
    def storeJob(self):
        html = self.getHtml(self.siteURL, self.dataReq)
        soup = BeautifulSoup(html,'lxml')
        for jobinfo in soup.find_all(class_="z_newsl")[0].find_all('li')[1:]:
            job = self.getJob(jobinfo)
            job_dict = {
                            'title': job[0],
                            'place': job[1],
                            'link': job[2],
                            'time': job[3],
                            'school': self.school 
                            }
            self.mysql.insertData("starkjobs",job_dict)

sju_spider = Sju_spider()
sju_spider.storeJob()
