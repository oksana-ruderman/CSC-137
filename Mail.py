from socket import *
heloCommand = 'HELO Alice\r\n'

#choose a mail server
mailServer = 'gaia.ecs.csus.edu'
serverPort = 25

#create socket and establish TCP connection with mailServer
clientSocket = socket(AF_INET, SOCK_STREAM)
clientSocket.connect((mailServer, serverPort))
recv = clientSocket.recv(1024)
print recv
if recv[:3] != '220':
	print '220 reply not received from server.'

#send HELO command and print server response
clientSocket.send(heloCommand)
recv1 = clientSocket.recv(1024)
print recv1
if recv1[:3] != '250':
	print '250 reply not received from server.'

#send mail from command and print server response
mailFromCommand = 'MAIL FROM: rudermao@ecs.csus.edu\r\n'
clientSocket.send(mailFromCommand)
recv1 = clientSocket.recv(1024)
print recv1
if recv1[:3] != '250':
	print '250 reply not received from server'

#send RCPT TO command and print server response
rcptToCommand = 'RCPT TO: oksanaruderman@yahoo.com\r\n'
clientSocket.send(rcptToCommand)
recv1 = clientSocket.recv(1024)
print recv1
if recv1[:3] != '250':
	print '250 reply not received from server'

#send DATA command and print server response
dataCommand = 'DATA\r\n'
clientSocket.send(dataCommand)
recv1 = clientSocket.recv(1024)
print recv1
if recv1[:3] != '354':
	print '354 reply not received from server'

#send message data
msg = "SUBJECT: SMTP Mail Client Test\nThis is CSC138 SMTP Mail assignment\n.\r\n"
clientSocket.send(msg)
recv1 = clientSocket.recv(1024)
print recv1
if recv1[:3] != '250':
	print '250 reply not received from server'

#send QUIT Command and get server response
quitCommand = 'QUIT\r\n'
clientSocket.send("QUIT\r\n")
recv1 = clientSocket.recv(1024)
print recv1
if recv1[:3] != '221':
	print '221 reply not received from server'

clientSocket.close()
