#!/bin/bash


PPATH=`pwd`

#jdk
function ijdk(){
	FL=/etc/profile

	wget http://ippre:8080/jdk-8u111-linux-x64.tar.gz

	tar -xvf jdk-8u111-linux-x64.tar.gz

	echo "JAVA_HOME=$PPATH/jdk1.8.0_111" >> $FL
	echo "PATH=\$JAVA_HOME/bin:\$PATH" >> $FL
}

# sysconfig
function isysconfig(){
	FL=/etc/sysctl.conf
	echo "fs.file-max=655350" >> $FL
	echo "net.core.somaxconn = 10000" >> $FL
	echo "vm.overcommit_memory = 1" >> $FL
	echo "net.ipv4.tcp_max_tw_buckets = 25000" >> $FL
	echo "net.nf_conntrack_max = 355360" >> $FL
	echo "net.ipv4.tcp_tw_recycle = 0" >> $FL
	echo "net.ipv4.tcp_tw_reuse = 1" >> $FL
	echo "net.ipv4.tcp_max_syn_backlog = 4100" >> $FL


	line=`cat $FL | grep net.ipv4.tcp_timestamps`
	echo $line
	sed -i s/"$line"/"net.ipv4.tcp_timestamps = 1"/g $FL

	line=`cat $FL | grep net.ipv4.ip_local_port_range`
	echo $line
	sed -i s/"$line"/"net.ipv4.ip_local_port_range = 2000 65000"/g $FL
	sysctl -p
}
#ulimit 
function iulimit(){
	FL=/etc/security/limits.conf
 	echo "* soft nofile 627680" >> $FL
 	echo "* hard nofile 655360" >> $FL
}

#vi
function ivi(){
	FL=/root/.vimrc
  	echo "set number" >> $FL
  	echo "set hlsearch" >> $FL
  	echo "set incsearch" >> $FL
  	echo "syntax on" >> $FL
	mv /bin/vi /bin/vi.bk
	ln -s /usr/bin/vim /bin/vi	
}


#ss
function iss(){
	wget http://ippre:8080/ss.tar.gz
	tar -xvf ss.tar.gz
}

echo $PPATH

ijdk
isysconfig
iulimit
ivi
#iss





