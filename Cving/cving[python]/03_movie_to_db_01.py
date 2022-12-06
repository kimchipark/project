# -*- coding: utf-8 -*-
"""
Created on Mon Nov  7 21:52:43 2022

@author: user
"""

import pandas as pd
import pymysql

from dbms.DBManager import DBManager 

df = pd.read_csv("./movie/movie.csv",encoding="utf8")
code = df['movie_code'].index
total = len(code)

db = DBManager()
db.DBOpen()
df = df.astype('object')

#테이블 데이터 삭제 
db.RunSQL("truncate table movie")

for i in range(0,total) :
    mcode = str(df.iloc[i]["영화코드"]) #영화 코드   
    print("code:" + mcode)
    title = str(df.iloc[i]["영화제목"]) #영화 제목
    making_year = str(df.iloc[i]["제작년도"])#제작 년도
    open_year   = str(df.iloc[i]["개봉년도"]) #개봉 년도
    title       = db._R(title)
    
    sql = ""
    sql = "insert into movie(mcode,mtitle_org,openyear,makingyear) "    
    sql += "values('" +mcode +"','" + title +"','"+ open_year +"','"+ making_year +"' )"
    
    db.RunSQL(sql)

db.DBClose()

print("작업완료!")




