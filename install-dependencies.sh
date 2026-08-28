# Install dependencies for Terramino demo app

# Update package list
apt-get update

# Install required packages
apt-get install -y ca-certificates curl gnupg git tar 
apt install -y --no-install-recommends ubuntu-desktop-minimal

# For CCS12
apt-get install libc6:i386
curl -LO "https://dr-download.ti.com/software-development/ide-configuration-compiler-or-debugger/MD-J1VdearkvK/12.8.1/CCS12.8.1.00005_linux-x64.tar.gz"
tar xvf "CCS12.8.1.00005_linux-x64.tar.gz"
./CCS12.8.1.00005_linux-x64/ccs_setup_12.8.1.00005.run --mode unattended --enable-components PF_MSP432 --prefix /opt/ti
curl -LO "https://dr-download.ti.com/software-development/software-development-kit-sdk/MD-dSV82B3Lb6/3.40.01.02/simplelink_msp432p4_sdk_3_40_01_02.run"
chmod +x simplelink_msp432p4_sdk_3_40_01_02.run && ./simplelink_msp433p4_sdk_3_40_01_02.run --mode unattended --enable-components PF_MSP432 --prefix /opt/ti
rm -rf simplelink_msp433p4_sdk_3_40_01_02.run CCS12.8.1.00005_linux-x64*
mkdir /home/vagrant/workspace_v12 # Our working dir for CCS

# Might need
# mv /home/vagrant/ti/ccs1120/ccs/ccs_base/common/bin/libstdc++.so.6 /home/vagrant/ti/ccs1120/ccs/ccs_base/common/bin/libstdc++.so.6.bak
# ln -s /usr/lib/x86_64-linux-gnu/libstdc++.so.6 /home/vagrant/ti/ccs1120/ccs/ccs_base/common/bin/libstdc++.so.6 

# Add Docker's official GPG key
# install -m 0755 -d /etc/apt/keyrings
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
# chmod a+r /etc/apt/keyrings/docker.gpg

# Add Docker repository
#echo \
#  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
#  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
#  tee /etc/apt/sources.list.d/docker.list > /dev/null
#
# Install Docker packages
# apt-get update
# apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Add vagrant user to docker group
# usermod -aG docker vagrant

# Clone Terramino repository if it doesn't exist
# if [ ! -d "/home/vagrant/terramino-go/.git" ]; then
#   cd /home/vagrant
#   rm -rf terramino-go
#   git clone https://github.com/hashicorp-education/terramino-go.git
#   cd terramino-go
#   git checkout containerized
# fi

# Create reload script
# cat > /usr/local/bin/reload-terramino << 'EOF'
# #!/bin/bash
# cd /home/vagrant/terramino-go
# docker compose down
# docker compose build --no-cache
# docker compose up -d
# EOF

# chmod +x /usr/local/bin/reload-terramino

# Add aliases
# echo 'alias play="docker compose -f /home/vagrant/terramino-go/docker-compose.yml exec -it backend ./terramino-cli"' >> /home/vagrant/.bashrc
# echo 'alias reload="sudo /usr/local/bin/reload-terramino"' >> /home/vagrant/.bashrc
# Source the updated bashrc
# echo "source /home/vagrant/.bashrc" >> /home/vagrant/.bash_profile
