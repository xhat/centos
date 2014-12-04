# 关闭防火墙
/sbin/service iptables stop

# 打开22 80端口
iptables -A INPUT -p tcp --dport 22 -j ACCEPT  
iptables -A OUTPUT -p tcp --sport 22 -j ACCEPT  
iptables -A INPUT -p tcp --dport 80 -m state --state NEW,ESTABLISHED -j ACCEPT  
iptables -A OUTPUT -p tcp --sport 80 -m state --state NEW,ESTABLISHED -j ACCEPT

# 关闭其它所有端口
iptables -P INPUT DROP  
iptables -P FORWARD DROP  
iptables -P OUTPUT DROP  

# 允许本地回环端口
iptables -A INPUT -s 127.0.0.1 -d 127.0.0.1 -j ACCEPT  

# 允许已经建立的连接通行
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT  

# 允许所有本机向外的访问
iptables -A OUTPUT -j ACCEPT  

# 保存重启
/sbin/service iptables save

# 启动防火墙
/sbin/service iptables save
