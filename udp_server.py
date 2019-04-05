from socket import*
serverPort = 45671
serverSocket = socket (AF_INET,SOCK_DGRAM)
serverSocket.bind(('127.0.0.1',serverPort))
print 'The server is ready to receive'
while 1:
	message, clientAddress = serverSocket.recvfrom(2048)
	modifiedMessage = message.upper()
	serverSocket.sendto(modifiedMessage, clientAddress)
