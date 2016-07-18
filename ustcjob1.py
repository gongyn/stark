# -*- coding:utf-8 -*-
import requests
from bs4 import BeautifulSoup
 
url = 'http://job.ustc.edu.cn/list.php'
front = 'http://job.ustc.edu.cn/'

#ustc将未举办和已举办的招聘会放在一页中
#因为目前没有未举办的招聘会，暂未知道每页有多少记录

#查询[1,4)页
for page in range(1,4):
    return_data = requests.post(url + '?pg=' + str(page) + '&MenuID=002001')
    print return_data.text
    soup = BeautifulSoup(return_data.text,'lxml')
    for job1 in soup.find_all(class_='Joplistone'):
        for job in job1.find_all('li'):
            link = front + job.find('a').get('href')
            name = job.find('a').get_text(strip=True)
            time = job.find(class_ = 'zhiwei').get_text(strip=True)
            place = job.find(class_ = 'zhuanye').get_text(strip=True)
            print name, place,  time
            print  link,'\n'
