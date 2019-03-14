apt update
apt install open-vm-tools open-vm-tools-desktop

systemctl start run-vmblock\\x2dfuse.mount
systemctl enable run-vmblock\\x2dfuse.mount

cat <<EOF >//root/Desktop/restart-vm-tools
pkill -f "vmtoolsd -n vmusr"
vmware-user-suid-wrapper 2>/dev/null
EOF

ln -sf /usr/share/zoneinfo/Europe/Stockholm /etc/localtime
dpkg-reconfigure -f noninteractive tzdata

DOTFILES=https://raw.githubusercontent.com/jonaslalin/dotfiles/master
curl -O $DOTFILES/GDB/.gdbinit
curl -O $DOTFILES/tmux/.tmux.conf
curl -O $DOTFILES/Vim/.vimrc
curl -O $DOTFILES/Zsh/.zshrc

chsh -s /bin/zsh root

gsettings set org.gnome.desktop.interface enable-animations false
gsettings set org.gnome.desktop.interface text-scaling-factor 1.4
gsettings set org.gnome.software allow-updates false
