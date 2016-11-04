# Install native dependencies
sudo apt-get update
sudo apt-get install -y ruby ruby-dev gcc make
sudo gem install bundle --no-document

# Install Ruby dependencies with Bundler 
sudo chown vagrant:vagrant /work
cd /work/project
bundle install --deployment --path=/work/vendor

# Setup and enable the Jekyll service unit
sudo mkdir -p /usr/lib/systemd/system/
sudo cp /work/project/_provision/jekyll.service /usr/lib/systemd/system/
sudo systemctl enable jekyll
sudo systemctl start jekyll