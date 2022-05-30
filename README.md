# Private Upgrade

## Manual upgrade
`ssh` to your robot, make sure that the robot has access to the internet and run the following series of commands in the terminal:
```bash
sudo rm -rf /home/dorna/Downloads/upgrade_pvt && sudo mkdir /home/dorna/Downloads/upgrade_pvt && sudo git clone https://github.com/smhty/upgrade_pvt.git /home/dorna/Downloads/upgrade_pvt && cd /home/dorna/Downloads/upgrade_pvt && sudo sh setup_0.sh
```

