from socket import*
serverName = '127.0.0.1'
serverPort = 45671
clientSocket = socket(AF_INET,SOCK_STREAM)
clientSocket.connect((serverName, serverPort))
sentence = raw_input ('Input lowercase sentence: ')
clientSocket.send(sentence)
modifiedSentence = clientSocket.recv(2048)
print 'From server: ', modifiedSentence
clientSocket.close()
