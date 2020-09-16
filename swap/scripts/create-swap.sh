# Create a file to use as swap-file  
sudo  dd  if=/dev/zero  of=/swapfile  bs=1024  count=256000  

# Format it as SWAP  
sudo mkswap  /swapfile  

# Give it appropriated permission  
sudo chmod 600 /swapfile  

# Turn it active (live)  
sudo swapon /swapfile  


echo "/swapfile was create and is active"
echo

