from socket import*
serverPort = 45671
serverSocket = socket(AF_INET,SOCK_STREAM)
serverSocket.bind(('127.0.0.1', serverPort))
serverSocket.listen(1)
print 'The server is ready to receive'
while 1:
	connectionSocket, addr = serverSocket.accept()
	sentence = connectionSocket.recv(2048)
	modifiedMessage = sentence.upper()
	connectionSocket.send(modifiedMessage)
	connectionSocket.close()
