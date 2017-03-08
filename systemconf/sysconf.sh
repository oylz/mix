#!/bin/bash

#==================================
FL="/etc/sysctl.conf"
echo "fs.file-max=655350" >> $FL
echo "net.core.somaxconn = 10000" >> $FL 
echo "vm.overcommit_memory = 1" >> $FL
echo "net.ipv4.tcp_max_tw_buckets = 25000" >> $FL
echo "net.nf_conntrack_max = 355360" >> $FL
echo "net.ipv4.tcp_tw_recycle = 0" >> $FL
echo "net.ipv4.tcp_tw_reuse = 1" >> $FL
echo "net.ipv4.tcp_max_syn_backlog = 4100" >> $FL

#==============================================
FL="/etc/security/limits.conf"
echo "* soft nofile 62768" >> $FL
echo "* hard nofile 65536" >> $FL

#====================================================
echo 25000 >  /proc/sys/net/ipv4/tcp_max_tw_buckets
echo 10000 >  /proc/sys/net/core/somaxconn
#=============================

FL="/etc/rc.local"
echo "if test -f /sys/kernel/mm/redhat_transparent_hugepage/enabled; then" >> $FL
echo "   echo never > /sys/kernel/mm/redhat_transparent_hugepage/enabled" >> $FL
echo "fi" >> $FL
echo "echo never > /sys/kernel/mm/redhat_transparent_hugepage/defrag" >> $FL

#==============================
echo never > /sys/kernel/mm/redhat_transparent_hugepage/enabled
echo never > /sys/kernel/mm/redhat_transparent_hugepage/defrag

sysctl -p


