

## UFWscripts
A repository containing different rule sets for Uncomplicated Firewall (UFW).

---

## Optional **SMART** Rules: 

##### SSH Rate Limit:
```
ufw limit 22/tcp  # prevent brute force attempts over SSH
```

##### Drop PING:
```
ufw deny proto icmp  # reducing scan service to block any incoming ping requests
```

##### Close Common Ports used for Malicious Activity:
```
ufw deny 23, ufw deny 445  # blocks remote connection and legacy machines
```

##### Force Encrypted Traffic:
```
ufw deny 80/tcp  # force traffic over HTTP/s
```

##### GeoLocation-IP Blocking:
```
ufw deny from IP_RANGE  # block known regions with malicious activity
```
