MACHINES = {
  :app => {
        :box_name => "generic/ubuntu2004",
        :ip_addr => '192.168.121.10'
  }
}

Vagrant.configure("2") do |config|
  MACHINES.each do |boxname, boxconfig|
      config.vm.define boxname do |box|
          box.vm.box = boxconfig[:box_name]
          box.vm.host_name = boxname.to_s

          box.vm.network "private_network", ip: boxconfig[:ip_addr]

          box.vm.provision "ansible" do |ansible|
            ansible.playbook = "ansible/site.yml"
          end
      end
  end
end