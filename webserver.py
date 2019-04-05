from socket import *
serverPort=8081
serverSocket = socket(AF_INET, SOCK_STREAM)
#Prepare a sever socket
serverSocket.bind(('localhost',serverPort))
serverSocket.listen(1)
print 'the web server is up on port:',serverPort
while True:
	#Establish the connection
	print 'Ready to serve...'
	connectionSocket, addr = serverSocket.accept()
	try:
 		message = connectionSocket.recv(1024)
 		filename = message.split()[1]
 		f = open(filename[1:])
 		outputdata = f.read()
 		print outputdata
		#Send one HTTP header line into socket
		connectionSocket.send('\nHTTP/1.1 200 OK\n\n')
		connectionSocket.send(outputdata)
		connectionSocket.close()
	except IOError:	
		#Send response message for file not found
		connectionSocket.send('\nHTTP/1.1 404 Not Found\n\n')
		connectionSocket.send('\nHTTP/1.1 404 Not Found\n\n')
