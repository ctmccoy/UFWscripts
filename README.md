

# UFWscripts

This repository contains Uncomplicated Firewall (UFW) rules.  These rules were specifically developed for use on a Linux system running **```UFW```**.

---
---

## Optional **SMART** Rules: 


<br>

##### SSH Rate Limit:
```
ufw limit 22/tcp
```
[🗨️ **This Prevents brute force by limiting SSH attempts**]
<br>
<br>
  

##### Drop PING:
```
ufw deny proto icmp
```
[🗨️ **This reduces the scanning surface by denying ICMP requests**]
<br>
<br>
  

##### Close Common Ports used for Malicious Activity:
```
ufw deny 23, ufw deny 445
```
[🗨️ **This blocks remote connections and connections to/from legacy machines**]
<br>
<br>

*]
##### Force Encrypted Traffic:
```
ufw deny 80/tcp
```
[🗨️ **This forces traffic over HTTP/s for encryption*
<br>
<br>


##### GeoLocation-IP Blocking:
```
ufw deny from IP_RANGE
```
[🗨️ **This blocks known regions with common malicious activity**]
<br>
<br>
