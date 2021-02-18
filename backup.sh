#!/bin/sh

home_path="$HOME"
backup_path="$(dirname "$(realpath "$0")")/home"
mkdir "$backup_path"

# .config directory
dot_config_path=".config"
rm -rf "$backup_path/$dot_config_path"
mkdir "$backup_path/$dot_config_path"

# alacritty
alacritty_config_path="$dot_config_path/alacritty"
mkdir "$backup_path/$alacritty_config_path"
alacritty_config_file="$alacritty_config_path/alacritty.yml"
cp -raf "$home_path/$alacritty_config_file" "$backup_path/$alacritty_config_file"
unset alacritty_config_file
unset alacritty_config_path

# i3
i3_config_path="$dot_config_path/i3"
mkdir "$backup_path/$i3_config_path"
i3_config_file="$i3_config_path/config"
cp -raf "$home_path/$i3_config_file" "$backup_path/$i3_config_file"
unset i3_config_file
unset i3_config_path

# nvim
# remember to source init.vim and PlugInstall inside nvim.
nvim_config_path="$dot_config_path/nvim"
mkdir "$backup_path/$nvim_config_path"
nvim_config_file="$nvim_config_path/init.vim"
cp -raf "$home_path/$nvim_config_file" "$backup_path/$nvim_config_file"
unset nvim_config_file
unset nvim_config_path

# polybar
# remember to add executable mod to launch.sh
polybar_config_path="$dot_config_path/polybar"
mkdir "$backup_path/$polybar_config_path"
polybar_config_file="$polybar_config_path/config"
cp -raf "$home_path/$polybar_config_file" "$backup_path/$polybar_config_file"
polybar_config_file="$polybar_config_path/launch.sh"
cp -raf "$home_path/$polybar_config_file" "$backup_path/$polybar_config_file"
unset polybar_config_file
unset polybar_config_path

# git
git_config_file=".gitconfig"
cp -raf "$home_path/$git_config_file" "$backup_path/$git_config_file"
unset git_config_file

# xprofle
xprofile_file=".xprofile"
cp -raf "$home_path/$xprofile_file" "$backup_path/$xprofile_file"
unset xprofile_file

unset dot_config_path
unset backup_path
unset home_path
