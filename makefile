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

run_ec2: echo_client2
	$(store)/echo_client2 127.0.0.1 9190

echo_client2: echo_client2.c
	$(cc) -o $(store)/echo_client2 echo_client2.c

run_ops: op_server
	$(store)/op_server 9190

op_server: op_server.c
	$(cc) -o $(store)/op_server op_server.c

run_opc: op_client
	$(store)/op_client 127.0.0.1 9190

op_client: op_client.c
	$(cc) -o $(store)/op_client op_client.c

run_ues: uecho_server
	$(store)/uecho_server 9190

uecho_server: uecho_server.c
	$(cc) -o $(store)/uecho_server uecho_server.c

run_uec: uecho_client
	$(store)/uecho_client 127.0.0.1 9190

uecho_client: uecho_client.c
	$(cc) -o $(store)/uecho_client uecho_client.c

run_bhs: bound_host1
	$(store)/bound_host1 9190

bound_host1: bound_host1.c
	$(cc) -o $(store)/bound_host1 bound_host1.c

run_bhc: bound_host2
	$(store)/bound_host2 127.0.0.1 9190

bound_host2: bound_host2.c
	$(cc) -o $(store)/bound_host2 bound_host2.c

run_uecc: uecho_con_client
	$(store)/uecho_con_client 127.0.0.1 9190

uecho_con_client: uecho_con_client.c
	$(cc) -o $(store)/uecho_con_client uecho_con_client.c