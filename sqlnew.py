#coding=utf-8
import MySQLdb

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

#创建数据表
cur.execute("\
    create table `ustcjob1`(\
        job_name    varchar(255),\
        job_place   varchar(255),\
        job_url     varchar(255),\
        job_time    datetime,\
        school_name varchar(255),\
        PRIMARY KEY (job_url)\
	)ENGINE=InnoDB;\
")
#插入一条数据
    # my_dict = {
    #     "job_name": name,
    #     "job_place": place,
    #     "job_url": link,
    #     "job_time": time,
    #     "school_name": school
    #     }
    # cols = ', '.join(my_dict.keys())
    # values = '"," '.join(my_dict.values())
    # sql = "INSERT INTO ustcjob (%s) VALUES (%s)" % (cols, '"'+values+'"')
    # cur.execute(sql)

#修改查询条件的数据
# cur.execute("update student set class='3 year 1 class' where name = 'Tom'")

#删除查询条件的数据
# cur.execute("delete from student where age='9'")

cur.close()
conn.commit()
conn.close()