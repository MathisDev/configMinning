config_file="env.conf"
os_name=$(grep PRETTY_NAME /etc/os-release | awk -F= '{print $2}' | tr -d '"')
## put info in en.conf
echo "OS_NAME=""$os_name" > $config_file

# # config env
sources env.conf

echo $OS_NAME

# # # detect os and disbale gui
# # if [ $OS_NAME == "UBUNTU-DESK"]
# #     bash enable_gui_ubuntu.sh
# # elif [$OS_NAME == "DEBIAN"]
# #     bash enable_gui_debian.sh
# # elif [$OS_NAME == "UBUNTU-SERVER"]
# #     echo "GUI ALREADY DISABLE"
# # then
# #     echo "OS NOT FOUND"
# # fi

# # # update 
# # apt update -y
# # apt upgrade -y
# # apt install python3 pip install openssh-client -y
# # bash off_suspend.sh

