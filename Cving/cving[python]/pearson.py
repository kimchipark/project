# -*- coding: utf-8 -*-
"""
Created on Mon Nov 14 11:12:15 2022

@author: MYCOM
"""

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from dbms.DBManager import DBManager 
'''
df = pd.read_csv("./data/movie_info_all.csv",encoding="utf8")

df = df[['영화코드','남자', '여자', '10대', '20대', '30대', '40대', '50대']]

df = df[df['남자'] != '없음']
male = df[df['남자'].astype('int64') > 50]
male = male.astype('int64')
print(male.info())
corr = male[['남자','10대', '20대', '30대', '40대', '50대']].corr(method = "pearson")
print(corr)
'''
df = pd.read_csv("./data/movie_info_all.csv",encoding="utf8")

idx = df['영화코드'].tolist()
print(idx)