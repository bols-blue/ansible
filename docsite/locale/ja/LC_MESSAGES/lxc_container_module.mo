��          �               L  �   M  �   �     �  �   �  �   O  `  <  �   �     G  �   d     U     ]     q    �     	  {  	     �  �   �  %   4  u  Z  �   �  �   ~     4  �   =  �   �  `  �  �         �  �   �     �     �     �         �  {  �       �   .  %   �   Containers must have a unique name. If you attempt to create a container with a name that already exists in the users namespace the module will simply return as "unchanged". Documentation updates for this module can also be edited directly by submitting a pull request to the module source code, just look for the "DOCUMENTATION" block in the source tree. Examples For help in developing on modules, should you be so inclined, please read :doc:`community`, :doc:`developing_test_pr` and :doc:`developing_modules`. If "archive" is **true** the system will attempt to create a compressed tarball of the running container. The "archive" option supports LVM backed containers and will create a snapshot of the running container when creating the archive. If you believe you have found a bug in this module, and are already running the latest stable or development version of Ansible, first look in the `issue tracker at github.com/ansible/ansible-modules-extras <http://github.com/ansible/ansible-modules-extras>`_ to see if a bug has already been filed.  If not, we would be grateful if you would file one. If your distro does not have a package for "python2-lxc", which is a requirement for this module, it can be installed from source at "https://github.com/lxc/python2-lxc" Management of LXC containers Note that this module is designated a "extras" module.  Non-core modules are still fully usable, but may receive slightly lower response rates for issues and pull requests. Popular "extras" modules may be promoted to core modules over time. Options Requires lxc >= 1.0 Requires python2-lxc >= 0.1 Should you have a question rather than a bug report, inquries are welcome on the `ansible-project google group <https://groups.google.com/forum/#!forum/ansible-project>`_ or on Ansible's "#ansible" channel, located on irc.freenode.net.   Development oriented topics should instead use the similar `ansible-devel google group <https://groups.google.com/forum/#!forum/ansible-devel>`_. Synopsis The "container_command" can be used with any state except "absent". If used with state "stopped" the container will be "started", the command executed, and then the container "stopped" again. Likewise if the state is "stopped" and the container does not exist it will be first created, "started", the command executed, and then "stopped". If you use a "|" in the variable you can use common script formatting within the variable iteself The "container_command" option will always execute as BASH. When using "container_command" a log file is created in the /tmp/ directory which contains both stdout and stderr of any command executed. This is an Extras Module This source of this module is hosted on GitHub in the `ansible-modules-extras <http://github.com/ansible/ansible-modules-extras>`_ repo. lxc_container - Manage LXC Containers Project-Id-Version: Ansible Documentation 0.01
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
 Containers must have a unique name. If you attempt to create a container with a name that already exists in the users namespace the module will simply return as "unchanged". Documentation updates for this module can also be edited directly by submitting a pull request to the module source code, just look for the "DOCUMENTATION" block in the source tree. Examples For help in developing on modules, should you be so inclined, please read :doc:`community`, :doc:`developing_test_pr` and :doc:`developing_modules`. If "archive" is **true** the system will attempt to create a compressed tarball of the running container. The "archive" option supports LVM backed containers and will create a snapshot of the running container when creating the archive. If you believe you have found a bug in this module, and are already running the latest stable or development version of Ansible, first look in the `issue tracker at github.com/ansible/ansible-modules-extras <http://github.com/ansible/ansible-modules-extras>`_ to see if a bug has already been filed.  If not, we would be grateful if you would file one. If your distro does not have a package for "python2-lxc", which is a requirement for this module, it can be installed from source at "https://github.com/lxc/python2-lxc" Management of LXC containers Note that this module is designated a "extras" module.  Non-core modules are still fully usable, but may receive slightly lower response rates for issues and pull requests. Popular "extras" modules may be promoted to core modules over time. Options Requires lxc >= 1.0 Requires python2-lxc >= 0.1 Should you have a question rather than a bug report, inquries are welcome on the `ansible-project google group <https://groups.google.com/forum/#!forum/ansible-project>`_ or on Ansible's "#ansible" channel, located on irc.freenode.net.   Development oriented topics should instead use the similar `ansible-devel google group <https://groups.google.com/forum/#!forum/ansible-devel>`_. Synopsis The "container_command" can be used with any state except "absent". If used with state "stopped" the container will be "started", the command executed, and then the container "stopped" again. Likewise if the state is "stopped" and the container does not exist it will be first created, "started", the command executed, and then "stopped". If you use a "|" in the variable you can use common script formatting within the variable iteself The "container_command" option will always execute as BASH. When using "container_command" a log file is created in the /tmp/ directory which contains both stdout and stderr of any command executed. This is an Extras Module This source of this module is hosted on GitHub in the `ansible-modules-extras <http://github.com/ansible/ansible-modules-extras>`_ repo. lxc_container - Manage LXC Containers 