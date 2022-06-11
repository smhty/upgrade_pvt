# Private Upgrade

## Initial change

### Step 1
Run `sudo nano /boot/config.txt` and add the following codes to the end of file
```bash
dtoverlay=pi3-miniuart-bt
enable_uart=1
```  
### Step 2
Run `sudo raspi-config` and then select the following options:
- select "Interfacing Options"
- select "Serial Port"
- select "No"
- Select "Yes"
- Select "OK"
- Finish and reboot

## Manual upgrade
`ssh` to your robot, make sure that the robot has access to the internet and run the following series of commands in the terminal:
```bash
sudo rm -rf /home/dorna/Downloads/upgrade_pvt && sudo mkdir /home/dorna/Downloads/upgrade_pvt && sudo git clone https://github.com/smhty/upgrade_pvt.git /home/dorna/Downloads/upgrade_pvt && cd /home/dorna/Downloads/upgrade_pvt && sudo sh setup_0.sh
```

