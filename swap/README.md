# SWAP file
**Create a swap file for Debian/Ubuntu.**  
  
Create a file to use as swap-file  
```
sudo  dd  if=/dev/zero  of=/swapfile  bs=1024  count=256000  
```
  
Format it as SWAP  
```
sudo mkswap  /swapfile  
```
  
Give it appropriated permission  
```
sudo chmod 600 /swapfile  
```
  
Turn it active (live)  
```
sudo swapon /swapfile  
```
  
  
Make it permanent after shutdown/restart  
[Add following line to the file /etc/fstab]  
```
/swapfile    none    swap    sw    0    0
```
  
