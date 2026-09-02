# Embedded
This is the repository for the Embedded Systems for the Internet of Things course.

requirements:
install vagrant (see website)
install one: environments. Examples are VirtualBox and extension pack (sudo apt get ...)

then run:
vagrant up --provision
for usb
1. on linux: sudo usermod -aG vboxusers $USER, on winwos macos idk
2. change usbfilter port id (see: ) in Vagrantfle
didnt work i did:
VBoxManage list usbhost (find uuid)
VBoxManage controlvm "ubuntu24_for_msp432_default_1787586380760_81005" usbattach 3dc1185b-3cb4-4c35-ad5e-fc018d942e5f
VBoxManage list vms

<!-- for seeing usbs:  -->
<!--     1. virtualbox extension pack -->

i needed:
sudo rmmod kvm_intel (or kvm_amd?)
right ctrl key to close virtualbox
name: vagrant pass: vagrant

RUN with OVA file in virtualbox:
```bash
cat embedded.ova.part* > embedded.ova
```
Option 1:
```bash
VBoxManage import embedded.ova
```
Option 2:
1. File -> Import Appliance (Ctrl + I)
2. Locate embedded.ova and finish

Then run virtualbox and start Embedded_default VM.
