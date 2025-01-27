# DoSed' out

---

The core challenge is to find out what happened to the attacked server by finding out who the suspected IP address is, where that address oringinated from and how many packets they sent with a SYN flag only

I have used Kali to generate some DoS traffic to the Server which was really just another Virtual Machine in that contained environment. The biggest hint is in the second part of the file name which is 'Synflood.

Determining the IP address that the attack is coming from should be rather straight forward the start of the DoS attack is quite easy to pick up that something suspicious is going on. The second part of the flag is slightly trickier to find but a simple quesion to Google will help you find the way to capture the packets quite quickly.

Detemining the IP address' originating country you use Google to help you find an IP geolocation tool and paste the address you have found to give you the originating country of that address.