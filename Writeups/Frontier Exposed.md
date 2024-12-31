Competition: HTB University CTF 2024: Binary Badlands
Name of Challenge: Frontier Exposed
Author: Lindsay Coudert

For this challenge we had been given a docker instance and no downloads as seen below.
![[Pasted image 20241231125024.png]]
So in order to access what we needed for the challenges we typed in the given IP address with the port attached into the browser leading us to this page:
![[Pasted image 20241231125142.png]]Going through each link we come across this line here in the bash_history
![[Pasted image 20241231125326.png]]
Upon Closer inspection we see --user -admin and --password with a string of characters. 
These characters upon putting it into cyberchef using the "Magic" mode showed us it was a base64 encoding, which when decoded gave us the flag 
![[Pasted image 20241231125539.png]]
The flag for this challenge was:
HTB{C2_cr3dr3nt14ls_3xp0s3d}