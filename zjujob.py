# -*- coding:utf-8 -*-
import requests
from bs4 import BeautifulSoup
 
url = 'http://www.career.zju.edu.cn/ejob/zczphxxmorelogin.do'
front = 'http://www.career.zju.edu.cn/ejob/'

#查询2页记录
#ZJU pagesize为30。

for page in range(1,3):
    return_data = requests.post(url, data = {'pages.currentPage':str(page)})
    #print return_data.text
    soup = BeautifulSoup(return_data.text)
    for job in soup.find_all(class_="con"):
        link = front + job.find('a').get('href')
        #print job.find_all('td')
        name = job.find_all('td')[0].get_text(strip=True)
        time = ':'.join(" ".join(job.find_all('td')[2].get_text(strip=True).split()).split(u"："))
        place = job.find_all('td')[1].get_text(strip=True)
        print name, place, time
        print link,'\n'
