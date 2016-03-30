Veewee::Session.declare({
  :cpu_count => '2',
  :memory_size => '2048',
  :video_memory_size => '128',
  :disk_size => '40960',
  :disk_format => 'VDI',
  :hostiocache => 'off',
  :os_type_id => 'Ubuntu_64',
  :iso_file => " ubuntu-14.04.3-netboot-amd64.iso",
  :iso_src => "http://archive.ubuntu.com/ubuntu/dists/trusty/main/installer-amd64/current/images/netboot/mini.iso",
  :iso_md5 => "7297321c2fa6424417a548c85edd6e98",
  :iso_download_timeout => "1000",
  :boot_wait => "4",
  :boot_cmd_sequence => [
    '<Esc>',
    'linux noapic preseed/url=http://%IP%:%PORT%/preseed.cfg ',
    'debian-installer=es_ES auto locale=es_ES kbd-chooser/method=es ',
    'hostname=%NAME% ',
    'fb=false debconf/frontend=noninteractive ',
    'keyboard-configuration/modelcode=SKIP keyboard-configuration/layout=es keyboard-configuration/variant=es console-setup/ask_detect=false ',
	'console-setup/ask_detect=false console-setup/modelcode=pc105 console-setup/layoutcode=es ',
    'initrd=initrd.gz -- <Enter>'
],
  :kickstart_port => "7122",
  :kickstart_timeout => "300",
  :kickstart_file => "preseed.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :ssh_key => "",
  :ssh_host_port => "7222",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "shutdown -P now",
  :postinstall_files => [
   "build_time.sh",
   "apt.sh",
   "sudo.sh",
   "vagrant.sh",
    "jdk8.sh",
	 "maven.sh",
	"desktop.sh",
	"tiw.sh",
	"yppa.sh",
	 "chromium.sh",
	 "mysql.sh",
	 "eclipse.sh",
	 "glassfish.sh",
   "vbox.sh",
   "optimized.sh",
   "cleanup.sh"
  ],
  :postinstall_timeout => "10000",
  :virtualbox => {
  :vm_options => [
    'ioapic' => 'on',               # APIC is necessary for symmetric multiprocessor (SMP) support
   # 'accelerate3d' => 'on',         # Necessary for X to start the Unity desktop in Ubuntu 12.10+ -- Useful for 12.04, although can slow the VM if host hardware lacks good 3D support
    'clipboard' => 'bidirectional',  # Useful for clipboard sharing between host & guest
	'hwvirtex' => 'on'
    
    # A Full list of settings can be found here: http://virtualbox.org/manual/ch08.html#idp51057568
    # Or generated based on the current settings of a virtualbox guest, such a machine named: myubuntu
    # VBoxManage showvminfo --machinereadable 'myubuntu'
    ]
  }
})
