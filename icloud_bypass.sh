#!/bin/bash
echo "> Installing Dependencies..."
brew install libusbmuxd https://raw.githubusercontent.com/kadwanev/bigboybrew/master/Library/Formula/sshpass.rb
echo
echo "> Backing up SSH trust list to~/.ssh/known_hosts.bak..."
mv ~/.ssh/known_hosts ~/.ssh/known_hosts.bak
clear
echo "==================== Activation Bypass Script ==================="
echo
echo "> Script By M@tty Millz"
echo "> Checkra1n By King Jon Cracks"
echo "> Method By r/jailbreak & Twitter"
echo
echo
echo "********************Warning⚠️********************"
echo 
echo "> Proof of Concept！will void Warranty <"
echo "> Iam Not responsible <"
echo 
echo "********************Warning⚠️********************"
echo
echo

read -p "> 请使用Checkra1n激活越狱，并将设备连接到此Mac。完成后按[Return]键继续。。。 "

clear

echo "> MappinSSH@localhost [Completed1/8]"
iproxy 2333 44 2> /dev/null &
echo
echo "> Accessing the Device via SSH [Completed2/8]"
runcmd () {
    sshpass -p alpine ssh -o StrictHostKeyChecking=no root@localhost -p 2333 "$1" > /dev/null
}
echo
echo "> Mounting the root File system as Read Write [Completed3/8]"
runcmd "mount -o rw,union,update / "
echo
echo "> RenamingSetup.app [Completed4/8]"
runcmd "mv /Applications/Setup.app /Applications/Setup.app.bak"
echo
echo "> Terminated Set-up Script[Completed5/8]"
runcmd "killall Setup"
echo
echo "> Clearing Cache [Completed6/8]"
runcmd "uicache --all"
echo
echo "> Restartingbackboardd [Completed7/8]"
runcmd "killall backboardd"
runcmd "killall backboardd"
echo
echo "> Repairing the national network list [已完成8/8]"
runcmd "rm -rf /Library/Preferences/com.apple.networkextension.plist"
runcmd "killall -9 Commcenter"
clear
echo
echo "> All Operations have been completed if there if there was no error it should load to desktop。"
echo
echo ">"
