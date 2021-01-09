#!/usr/bin/env python3
import sqlite3

HLR_DATABASE = "hlr.sqlite3"
db = sqlite3.connect(HLR_DATABASE)
c = db.cursor()
c.execute("SELECT * FROM Subscriber")

print("ID\t\tcreated\t\tIMSI\t\t\tTMSI\t\textension\n")
while 1:
    subscriber = c.fetchone()
    if not subscriber:
        break

    print("{0:1}\t{1:2}\t{2:<15}\t\t{3:<10}\t{4}".format(
            subscriber[0],
            subscriber[1],
            subscriber[3],
            subscriber[7],
            subscriber[5]
            ))

db.close()

