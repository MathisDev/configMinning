# To disable the GUI on boot: 
sudo systemctl set-default multi-user.target
# To enable the GUI on boot: 
sudo systemctl set-default graphical.target
# To disable the GUI temporarily: 
sudo systemctl isolate multi-user.target
# To enable the GUI temporarily: 
sudo systemctl isolate graphical.target
