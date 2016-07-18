# -*- coding:utf-8 -*-
import requests
import re
from bs4 import BeautifulSoup

 
url = 'http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=searchXjhxx'
front = 'http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=viewXjhxx&id='

#查询count条记录
post_data = {
    'xjhType':'yjb',
    'Referer':'http://www.job.sjtu.edu.cn/eweb/jygl/zpfw.so?modcode=jygl_xjhxxck&subsyscode=zpfw&type=searchXjhxx'
    } 
return_data = requests.post(url, post_data)
# print return_data.text
soup = BeautifulSoup(return_data.text,'lxml')

job1=soup.find_all(class_="z_newsl")[0]

pattern = re.compile('\'(.*?)\'',re.S)

for job in job1.find_all('li')[1:]:
    items = re.findall(pattern,job.find('a').get('onclick'))
    link = front + items[0]
    name = job.find_all('div')[0].get_text(strip=True)
    time = job.find_all('div')[3].get_text(strip=True) + ' ' + job.find_all('div')[4].get_text(strip=True)
    place = job.find_all('div')[2].get_text(strip=True)
    print name, place, time
    print  link,'\n'