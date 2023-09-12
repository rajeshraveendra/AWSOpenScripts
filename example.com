$TTL 86400
@ IN SOA ns1.example.com. root.example.com. (
	2013042201 ;Serial
	3600 ;Refresh
	1800 ;Retry
	604800 ;Expire
	86400 ;Minimum TTL
)
; Specify our two nameservers
IN	NS	dnsA.	example.com.
IN	NS	dnsB.	example.com.
; Resolve nameserver hostnames to IP, replace with your two droplet IP addresses.
dnsA	IN	A	1.1.1.1
dnsB	IN	A	8.8.8.8
; Define hostname -> IP pairs which you wish to resolve
@	IN	A	192.168.11.100
public	IN	A	192.168.1.10
private	IN	A	192.168.11.100
dns	IN	A	192.168.11.100
