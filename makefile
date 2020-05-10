cc = gcc
store = ./progs

run_hs:
	$(store)/hello_server 9190

run_hc:
	$(store)/hello_client 127.0.0.1 9190

hello_server: hello_server.c
	$(cc) -o $(store)/hello_server hello_server.c

hello_client: hello_client.c
	$(cc) -o $(store)/hello_client hello_client.c