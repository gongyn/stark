#coding=utf-8
import MySQLdb

#需要先创建名为stark的MySQL数据库

try:
    #连接数据库函数connect(host, username, password, dbname)
    conn = MySQLdb.connect('localhost', 'root', 'password', 'stark')
except mdb.Error, e:
    print "Error %d: %s" % (e.args[0],e.args[1])
    sys.exit(1)

#cursor对象遍历记录
cur = conn.cursor()
#创建数据表
cur.execute("\
    CREATE TABLE `starkjobs`(\
        id    int(11) NOT NULL AUTO_INCREMENT,\
        title    varchar(255) NOT NULL,\
        place   varchar(255) NOT NULL,\
        link     varchar(255) NOT NULL,\
        time    datetime NOT NULL,\
        school varchar(255) NOT NULL,\
        PRIMARY KEY (id),\
        UNIQUE KEY(link)\
	)ENGINE=InnoDB DEFAULT CHARSET=utf8;\
")
