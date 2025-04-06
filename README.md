

# UFWscripts

This repository contains Uncomplicated Firewall (UFW) rules.  These rules were specifically developed for use on a Linux system running **```./zhs```**

---
---

## Optional **SMART** Rules: 


<br>

[🗨️ **This Prevents brute force by limiting SSH attempts**]
##### SSH Rate Limit:
```
ufw limit 22/tcp
```
<br>
<br>
  
[🗨️ **This reduces the scanning surface by dropping ping requests**]
##### Drop PING:
```
ufw deny proto icmp
```
<br>
<br>
  
[🗨️ **This blocks remote connections and connections to/from legacy machines**]
##### Close Common Ports used for Malicious Activity:
```
ufw deny 23, ufw deny 445
```
<br>
<br>

[🗨️ **This forces traffic over HTTP/s for encryption**]
##### Force Encrypted Traffic:
```
ufw deny 80/tcp
```
<br>
<br>

[🗨️ **This blocks known regions with common malicious activity**]
##### GeoLocation-IP Blocking:
```
ufw deny from IP_RANGE
```
<br>
<br>
