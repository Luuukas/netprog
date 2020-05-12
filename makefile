cc = gcc
store = ./progs

run_hs: hello_server
	$(store)/hello_server 9190

run_hc: hello_client
	$(store)/hello_client 127.0.0.1 9190

hello_server: hello_server.c
	$(cc) -o $(store)/hello_server hello_server.c

hello_client: hello_client.c
	$(cc) -o $(store)/hello_client hello_client.c

run_ts: run_hs

run_tc: tcp_client
	$(store)/tcp_client 127.0.0.1 9190

tcp_client: tcp_client.c
	$(cc) -o $(store)/tcp_client tcp_client.c

run_es: echo_server
	$(store)/echo_server 9190

echo_server: echo_server.c
	$(cc) -o $(store)/echo_server echo_server.c

run_ec: echo_client
	$(store)/echo_client 127.0.0.1 9190

echo_client: echo_client.c
	$(cc) -o $(store)/echo_client echo_client.c