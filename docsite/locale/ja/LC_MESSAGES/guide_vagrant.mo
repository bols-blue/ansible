��                        �     �          +  W  ?  k   �       p        �  _   �  5   �  #   0  :  T  �   �  $  U  �   z  A   (	  �   j	     ?
  9   ^
  1   �
     �
     �
     �
  �    *  �  }   �  O   t  8   �  +   �  u  )     �     �     �  W  �  k   9     �  p   �     #  _   <  5   �  #   �  :  �  �   1  $  �  �     A   �  �        �  9      1   :     l     �     �  �  �  *  m  }   �  O     8   f  +   �   :doc:`playbooks` An introduction to playbooks Here is an example: If you want to run Ansible manually, you will want to make sure to pass ``ansible`` or ``ansible-playbook`` commands the correct arguments for the username (usually ``vagrant``) and the SSH key (since Vagrant 1.7.0, this will be something like ``.vagrant/machines/[machine name]/[provider]/private_key``), and the autogenerated inventory file. If you're not familiar with Vagrant, you should visit `the documentation <http://docs.vagrantup.com/v2/>`_. Introduction Note: Vagrant versions prior to 1.7.0 will use the private key located at ``~/.vagrant.d/insecure_private_key.`` Running Ansible Manually Sometimes you may want to run Ansible manually against the machines. This is pretty easy to do. The Vagrant documentation for the Ansible provisioner The Vagrant homepage with downloads The Vagrantfile has a lot of options, but these are the most important ones. Notice the ``config.vm.provision`` section that refers to an Ansible playbook called ``playbook.yml`` in the same directory as the Vagrantfile. Vagrant runs the provisioner once the virtual machine has booted and is ready for SSH access. The first step once you've installed Vagrant is to create a ``Vagrantfile`` and customize it to suit your needs. This is covered in detail in the Vagrant documentation, but here is a quick example: There are a lot of Ansible options you can configure in your Vagrantfile. Some particularly useful options are ``ansible.extra_vars``, ``ansible.sudo`` and ``ansible.sudo_user``, and ``ansible.host_key_checking`` which you can disable to avoid SSH connection problems to new virtual machines. This guide assumes that you already have Ansible installed and working. Running from a Git checkout is fine. Follow the :doc:`intro_installation` guide for more information. This guide will describe how to use Vagrant and Ansible together. This will create a file called Vagrantfile that you can edit to suit your needs. The default Vagrantfile has a lot of comments. Here is a simplified example that includes a section to use the Ansible provisioner: This will re-run the playbook. This will start the VM and run the provisioning playbook. To re-run a playbook on an existing VM, just run: Using Vagrant and Ansible Vagrant Documentation Vagrant Setup Vagrant automatically creates an inventory file for each Vagrant machine in the same directory located under ``.vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory``. It configures the inventory file according to the SSH tunnel that Vagrant automatically creates, and executes ``ansible-playbook`` with the correct username and SSH key options to allow access. A typical automatically-created inventory file may look something like this: Vagrant is a tool to manage virtual machine environments, and allows you to configure and use reproducible work environments on top of various virtualization and cloud platforms. It also has integration with Ansible as a provisioner for these virtual machines, and the two tools work together well. Visit the `Ansible Provisioner documentation <http://docs.vagrantup.com/v2/provisioning/ansible.html>`_ for more information. `Ansible Provisioner <http://docs.vagrantup.com/v2/provisioning/ansible.html>`_ `Vagrant Documentation <http://docs.vagrantup.com/v2/>`_ `Vagrant Home <http://www.vagrantup.com/>`_ Project-Id-Version: Ansible Documentation 0.01
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-04-17 17:09+0900
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: ja <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 1.3
 :doc:`playbooks` An introduction to playbooks Here is an example: If you want to run Ansible manually, you will want to make sure to pass ``ansible`` or ``ansible-playbook`` commands the correct arguments for the username (usually ``vagrant``) and the SSH key (since Vagrant 1.7.0, this will be something like ``.vagrant/machines/[machine name]/[provider]/private_key``), and the autogenerated inventory file. If you're not familiar with Vagrant, you should visit `the documentation <http://docs.vagrantup.com/v2/>`_. Introduction Note: Vagrant versions prior to 1.7.0 will use the private key located at ``~/.vagrant.d/insecure_private_key.`` Running Ansible Manually Sometimes you may want to run Ansible manually against the machines. This is pretty easy to do. The Vagrant documentation for the Ansible provisioner The Vagrant homepage with downloads The Vagrantfile has a lot of options, but these are the most important ones. Notice the ``config.vm.provision`` section that refers to an Ansible playbook called ``playbook.yml`` in the same directory as the Vagrantfile. Vagrant runs the provisioner once the virtual machine has booted and is ready for SSH access. The first step once you've installed Vagrant is to create a ``Vagrantfile`` and customize it to suit your needs. This is covered in detail in the Vagrant documentation, but here is a quick example: There are a lot of Ansible options you can configure in your Vagrantfile. Some particularly useful options are ``ansible.extra_vars``, ``ansible.sudo`` and ``ansible.sudo_user``, and ``ansible.host_key_checking`` which you can disable to avoid SSH connection problems to new virtual machines. This guide assumes that you already have Ansible installed and working. Running from a Git checkout is fine. Follow the :doc:`intro_installation` guide for more information. This guide will describe how to use Vagrant and Ansible together. This will create a file called Vagrantfile that you can edit to suit your needs. The default Vagrantfile has a lot of comments. Here is a simplified example that includes a section to use the Ansible provisioner: This will re-run the playbook. This will start the VM and run the provisioning playbook. To re-run a playbook on an existing VM, just run: Using Vagrant and Ansible Vagrant Documentation Vagrant Setup Vagrant automatically creates an inventory file for each Vagrant machine in the same directory located under ``.vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory``. It configures the inventory file according to the SSH tunnel that Vagrant automatically creates, and executes ``ansible-playbook`` with the correct username and SSH key options to allow access. A typical automatically-created inventory file may look something like this: Vagrant is a tool to manage virtual machine environments, and allows you to configure and use reproducible work environments on top of various virtualization and cloud platforms. It also has integration with Ansible as a provisioner for these virtual machines, and the two tools work together well. Visit the `Ansible Provisioner documentation <http://docs.vagrantup.com/v2/provisioning/ansible.html>`_ for more information. `Ansible Provisioner <http://docs.vagrantup.com/v2/provisioning/ansible.html>`_ `Vagrant Documentation <http://docs.vagrantup.com/v2/>`_ `Vagrant Home <http://www.vagrantup.com/>`_ 