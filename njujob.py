# -*- coding:utf-8 -*-
import requests
from bs4 import BeautifulSoup

url = 'http://job.nju.edu.cn:9081/login/nju/home.jsp?type=zph&pageNow=1&sfss=sfss&zphzt=&jbksrq=&jbjsrq=&sfgq=&pageSearch=1'
front = 'http://job.nju.edu.cn:9081/login/nju/'


post_data = {
	'Referer': "http://job.nju.edu.cn:9081/login/nju/home.jsp?type=sxzp&pageNow=1",
    'User-Agent':"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0",
    'type':'zph',
    'pageNow':1
    } 
return_data = requests.get(url, post_data)
return_data.encoding = 'utf-8'

soup = BeautifulSoup(return_data.text,'lxml')
# print soup.prettify()
job1=soup.find_all(class_="article-lists")[0]

for job in job1.find_all('li'):
    # url = front + job.find_all('a')[0].get('href')
    name = job.find_all('span')[0].get_text(strip=True)
    # time = job.find_all('span')[1].get_text(strip=True)
    print name
    # print  (url),('\n')