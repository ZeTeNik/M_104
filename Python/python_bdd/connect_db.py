# connect_db.py
# ROI 2020.03.12 Connexion bd

import pymysql
import pymysql.cursors

class DatabaseTools():
    def __init__(self):

        self.db = pymysql.connect(host="localhost",
                                  user="root",
                                  password="root",
                                  db="rodriguez_ilan_bulletins_versement_bd_104",
                                  cursorclass=pymysql.cursors.DictCursor)
        print("bd connectée impec !!")