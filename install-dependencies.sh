# For CCS12
dpkg --add-architecture i386 && apt-get update && apt-get install -y curl gnupg tar libc6:i386
curl -LO "https://dr-download.ti.com/software-development/software-development-kit-sdk/MD-dSV82B3Lb6/3.40.01.02/simplelink_msp432p4_sdk_3_40_01_02.run"
./CCS12.8.1.00005_linux-x64/ccs_setup_12.8.1.00005.run --mode unattended --enable-components PF_MSP432 --prefix /opt/ti/ccs1281
curl -LO "https://dr-download.ti.com/software-development/software-development-kit-sdk/MD-dSV82B3Lb6/3.40.01.02/simplelink_msp432p4_sdk_3_40_01_02.run"
chmod +x /home/vagrant/simplelink_msp432p4_sdk_3_40_01_02.run && ./simplelink_msp433p4_sdk_3_40_01_02.run --mode unattended --enable-components PF_MSP432 --prefix /opt/ti
./simplelink_msp432p4_sdk_3_40_01_02.run --mode unattended --prefix /opt/ti/ccs1281
rm -rf simplelink_msp433p4_sdk_3_40_01_02.run CCS12.8.1.00005_linux-x64*
