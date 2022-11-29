# useful-hadoop-script
steps for adding the shell file
1. create a bin folder under your account path zwang2654 is my account name# home/zwang2654/bin
2. create a file by typing in terminal #[zwang2654@hadoop102 bin]$ vim xsync
3. paste the content of each file into the vim writer
4. give permission to shell command at bin #[zwang2654@hadoop102 bin]$ chmod +x xsync
5. now the command is working, sync it to all other machines #[zwang2654@hadoop102 ~]$ xsync /home/zwang2654/bin
6. copy the command to the main bin #[zwang2654@hadoop102 bin]$ sudo cp xsync /bin/
5. add to computer environment for all users #[zwang2654@hadoop102 ~]$ sudo ./bin/xsync /etc/profile.d/my_env.sh
6. go to opt folder #cd /opt; then source it #source /etc/profile
7. go to bin folder #cd /zwang2654/bin, then source it #source /etc/profile
## explaination for script functions
# 
