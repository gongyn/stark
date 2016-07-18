# -*- coding:utf-8 -*-

import requests
from bs4 import BeautifulSoup
 
url = 'http://www.career.fudan.edu.cn/jsp/career_talk_list.jsp'
front = 'http://www.career.fudan.edu.cn/html/xjh/1.html?view=true&key='

#查询count条记录
return_data = requests.post(url, data = {'count':'100'})

#print return_data.text
soup = BeautifulSoup(return_data.text)
for job in soup.find_all(id = 'tab1_bottom'):
    link = front + job.get('key')
    name = job.find(class_ = 'tab1_bottom1').get_text()
    types = job.find(class_ = 'tab1_bottom2').get_text()
    date = job.find(class_ = 'tab1_bottom3').get_text() + ' '+ job.find(class_ = 'tab1_bottom4').get_text().split('-')[0]
    place = job.find(class_ = 'tab1_bottom5').get_text()
    print name, types, place, date
    print link,'\n'

