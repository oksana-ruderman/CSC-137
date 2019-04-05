import smtplib
from socket import*

sender = "oruderman2@gmail.com"
receiver = ["oksanaruderman@yahoo.com"]

msg = """To: Oksana
From: Oksana <oruderman2@gmail.com>
Subject: 138 SMTP
This is 138 test
"""
try:
	server = smtplib.SMTP('127.0.0.1')
	result = server.sendmail(sender, receiver, msg)
	server.quit()
	if result:
		for r in result.keys():
			print "Error", r
			rt = result[r]
			print "code", rt[0], ":", rt[1]
		else:
			print "Sent"
except smtplib.SMTPException, arg:
	print "server coun't send the email", arg
