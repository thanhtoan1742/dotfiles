rm -rf ./home
mkdir ./home
mkdir ./home/.config
mkdir ./home/.config/nvim

cp -rf $HOME/.gitconfig ./home/
cp -rf $HOME/.profile ./home/
cp -rf $HOME/.zshrc ./home/
cp -rf $HOME/.config/nvim ./home/.config/
