# -*- coding:utf-8 -*-
import MySQLdb
import requests
from bs4 import BeautifulSoup

import sys
reload(sys)
sys.setdefaultencoding('utf-8')

conn= MySQLdb.connect(
        host='localhost',
        port = 3306,
        user='root',
        passwd='sql8086',
        db ='starkjob',
        )
cur = conn.cursor()
conn.set_character_set('utf8')
# cur.execute('SET NAMES utf8;')
# cur.execute('SET CHARACTER SET utf8;')
# cur.execute('SET character_set_connection=utf8;')

url = 'http://job.ustc.edu.cn/list.php?MenuID=002001'
front = 'http://job.ustc.edu.cn/'
school = 'ustc'

#查询count条记录
post_data = {
    'pg':'1',
    'trans':'7',
    'MenuID':'002001'
    } 
return_data = requests.get(url, post_data)
# print return_data.text
soup = BeautifulSoup(return_data.text,'lxml')

job1=soup.find_all(class_="Joplistone")[1]

for job in job1.find_all('li'):
    link = front + job.find('a').get('href')
    name = job.find('a').get_text(strip=True)
    time = job.find(class_ = 'zhiwei').get_text(strip=True)
    place = job.find(class_ = 'zhuanye').get_text(strip=True)
    # print name, place, time
    # print  link,'\n'
    my_dict = {
        "job_name": name,
        "job_place": place,
        "job_url": link,
        "job_time": time,
        "school_name": school
        }
    cols = ','.join(my_dict.keys())
    values = '","'.join(my_dict.values())
    sql = "INSERT INTO %s (%s) VALUES (%s)" % ("ustcjob", cols, '"'+values+'"')
    cur.execute(sql)

cur.close()
conn.commit()
conn.close()
