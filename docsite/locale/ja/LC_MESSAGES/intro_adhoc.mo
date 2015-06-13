��    J      l              �     �  7   �  �        �     �     �       !   (  4   J  u     &  �       >   /  &   n     �  +   �  5   �  4   	  #   J	  /   n	     �	  �   �	     �
  �   �
  �   �     $  q   4  �   �  �   (  �   �  o   �  �        �  V   �  x     �   �  �   .     �     �  a   �  k   J  s   �     *  *  I  )   t  :   �  $  �  q   �  �   p  �   �  �  �  �   i  �   �    �  �   �  J   t  p   �  S   0  N   �  �   �  "   �   -   �      !  �   !  �   "     �"  7   #  /   ;#     k#  U  �#    �$  @   �%  -   1&  u  _&     �'  7   �'  �   '(     �(     )     )     $)  !   @)  4   b)  u   �)  &  *     4+  >   G+  &   �+     �+  +   �+  5   �+  4   -,  #   b,  /   �,     �,  �   �,     �-  �   �-  �   �.     </  q   L/  �   �/  �   @0  �   �0  o   �1  �   2     �2  V   �2  x   /3  �   �3  �   F4     �4     �4  a    5  k   b5  s   �5     B6  *  a6  )   �7  :   �7  $  �7  q   :  �   �:  �   ;  �  �;  �   �=  �   	>    �>  �   �@  J   �A  p   �A  S   HB  N   �B  �   �B  "   �C  -   �C     ,D  �   3D  �   3E     
F  7   F  /   SF     �F  U  �F    �G  @   I  -   II   #ansible IRC chat channel (See :doc:`playbooks` for more information about those) /usr/bin/ansible will default to running from your user account.  If you do not like this behavior, pass in "-u username".  If you want to run commands as a different user, it looks like this:: :doc:`intro_configuration` :doc:`modules` :doc:`playbooks` A list of available modules All about the Ansible config file Alternatively, restart a service on all webservers:: An ad-hoc command is something that you might type in to do something really quick, but don't want to save for later. Ansible has modules for managing packages under many platforms.  If your package manager does not have a module available for it, you can install for other packages using the command module or (better!) contribute a module for other package managers.  Stop by the mailing list for info/details. Arbitrary example. As well as delete directories (recursively) and delete files:: Deploy your webapp straight from git:: Deploying From Source Control Ensure a package is at the latest version:: Ensure a package is installed to a specific version:: Ensure a package is installed, but don't update it:: Ensure a package is not installed:: Ensure a service is started on all webservers:: Ensure a service is stopped:: Facts are described in the playbooks section and represent discovered variables about a system.  These can be used to implement conditional execution of tasks but also just to get ad-hoc information about your system. You can see all facts via:: File Transfer For configuration management and deployments, though, you'll want to pick up on using '/usr/bin/ansible-playbook' -- the concepts you will learn here will port over directly to the playbook language. For instance, if you wanted to power off all of your lab for Christmas vacation, you could execute a quick one-liner in Ansible without writing a playbook. Gathering Facts Generally speaking, the true power of Ansible lies in playbooks. Why would you use ad-hoc tasks versus playbooks? Here's another use case for the `/usr/bin/ansible` command line.  Ansible can SCP lots of files to multiple machines in parallel. If you do decide you want to check on the job status later, you can use the async_status module, passing it the job id that was returned when you ran the original job in the background:: If you don't want to use ssh-agent and want to instead SSH with a password instead of keys, you can with ``--ask-pass`` (``-k``), but it's much better to just use ssh-agent. If you haven't read :doc:`intro_inventory` already, please look that over a bit first and then we'll get going. If you use playbooks, you can also take advantage of the ``template`` module, which takes this another step further.  (See module and playbook documentation). Introduction To Ad-Hoc Commands It is also possible to sudo to a user other than root using ``--sudo-user`` (``-U``):: It's also possible to filter this output to just export certain facts, see the "setup" module documentation for details. Let's use Ansible's command line tool to reboot all web servers in Atlanta, 10 at a time.  First, let's set up SSH-agent so it can remember our credentials:: Long running operations can be backgrounded, and their status can be checked on later. If you kick hosts and don't want to poll, it looks like this:: Managing Packages Managing Services Now to run the command on all servers in a group, in this case, *atlanta*, in 10 parallel forks:: Often you'll not want to just do things from your user account.  If you want to run commands through sudo:: Ok, so those are basics.  If you didn't read about patterns and groups yet, go back and read :doc:`intro_patterns`. Parallelism and Shell Commands Poll mode is smart so all jobs will be started before polling will begin on any machine. Be sure to use a high enough ``--forks`` value if you want to get all of your jobs started very quickly. After the time limit (in seconds) runs out (``-B``), the process on the remote nodes will be terminated. Polling is built-in and looks like this:: Questions? Help? Ideas?  Stop by the list on Google Groups Rarely, some users have security rules where they constrain their sudo environment to running specific command paths only. This does not work with ansible's no-bootstrapping philosophy and hundreds of different modules. If doing this, use Ansible from a special account that does not have this constraint. One way of doing this without sharing access to unauthorized users would be gating Ansible with :doc:`tower`, which can hold on to an SSH credential and let members of certain organizations use it on their behalf without having direct access. Read more about facts at :doc:`playbooks_variables` once you're ready to read up on :doc:`Playbooks <playbooks>`. See the :doc:`modules` section for details on all of the available options, including how to manipulate groups and group membership. Since Ansible modules can notify change handlers it is possible to tell Ansible to run specific tasks when the code is updated, such as deploying Perl/Python/PHP/Ruby directly from git and then restarting apache. So far we've been demoing simple command execution, but most Ansible modules usually do not work like simple scripts. They make the remote system look like you state, and run the commands necessary to get it there.  This is commonly referred to as 'idempotence', and is a core design goal of Ansible. However, we also recognize that running arbitrary commands is equally important, so Ansible easily supports both. The 'user' module allows easy creation and manipulation of existing user accounts, as well as removal of user accounts that may exist:: The :ref:`command` module does not support shell variables and things like piping.  If we want to execute a module using a shell, use the 'shell' module instead. Read more about the differences on the :doc:`modules` page. The ``-f 10`` in the above specifies the usage of 10 simultaneous processes to use.   You can also set this in :doc:`intro_configuration` to avoid setting it again.  The default is actually 5, which is really small and conservative.  You are probably going to want to talk to a lot more simultaneous hosts so feel free to crank this up.  If you have more hosts than the value set for the fork count, Ansible will talk to them, but it will take a little longer.  Feel free to push this value as high as your system can handle it! The ``file`` module allows changing ownership and permissions on files.  These same options can be passed directly to the ``copy`` module as well:: The ``file`` module can also create directories, similar to ``mkdir -p``:: The above example says "run for 30 minutes max (``-B``: 30*60=1800), poll for status (``-P``) every 60 seconds". The following examples show how to use `/usr/bin/ansible` for running ad hoc tasks. There are modules available for yum and apt.  Here are some examples with yum. This is a good place to start to understand the basics of what Ansible can do prior to learning the playbooks language -- ad-hoc commands can also be used to do quick things that you might not necessarily want to write a full playbook for. Time Limited Background Operations To transfer a file directly to many servers:: Topics Typically you'll only be backgrounding long-running shell commands or software upgrades only.  Backgrounding the copy module does not do a background file transfer.  :doc:`Playbooks <playbooks>` also support polling, and have a simplified syntax for this. Use ``--ask-sudo-pass`` (``-K``) if you are not using passwordless sudo.  This will interactively prompt you for the password to use. Use of passwordless sudo makes things easier to automate, but it's not required. Users and Groups Using Ansible for configuration management & deployment Using the :ref:`shell` module looks like this:: What's an ad-hoc command? When running any command with the Ansible *ad hoc* CLI (as opposed to :doc:`Playbooks <playbooks>`), pay particular attention to shell quoting rules, so the local shell doesn't eat a variable before it gets passed to Ansible. For example, using double vs single quotes in the above example would evaluate the variable on the box you were on. You can also select what Ansible "module" you want to run.  Normally commands also take a ``-m`` for module name, but the default module name is 'command', so we didn't need to specify that all of the time.  We'll use ``-m`` in later examples to run some other :doc:`modules`. `Mailing List <http://groups.google.com/group/ansible-project>`_ `irc.freenode.net <http://irc.freenode.net>`_ Project-Id-Version: Ansible Documentation 0.01
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
 #ansible IRC chat channel (See :doc:`playbooks` for more information about those) /usr/bin/ansible will default to running from your user account.  If you do not like this behavior, pass in "-u username".  If you want to run commands as a different user, it looks like this:: :doc:`intro_configuration` :doc:`modules` :doc:`playbooks` A list of available modules All about the Ansible config file Alternatively, restart a service on all webservers:: An ad-hoc command is something that you might type in to do something really quick, but don't want to save for later. Ansible has modules for managing packages under many platforms.  If your package manager does not have a module available for it, you can install for other packages using the command module or (better!) contribute a module for other package managers.  Stop by the mailing list for info/details. Arbitrary example. As well as delete directories (recursively) and delete files:: Deploy your webapp straight from git:: Deploying From Source Control Ensure a package is at the latest version:: Ensure a package is installed to a specific version:: Ensure a package is installed, but don't update it:: Ensure a package is not installed:: Ensure a service is started on all webservers:: Ensure a service is stopped:: Facts are described in the playbooks section and represent discovered variables about a system.  These can be used to implement conditional execution of tasks but also just to get ad-hoc information about your system. You can see all facts via:: File Transfer For configuration management and deployments, though, you'll want to pick up on using '/usr/bin/ansible-playbook' -- the concepts you will learn here will port over directly to the playbook language. For instance, if you wanted to power off all of your lab for Christmas vacation, you could execute a quick one-liner in Ansible without writing a playbook. Gathering Facts Generally speaking, the true power of Ansible lies in playbooks. Why would you use ad-hoc tasks versus playbooks? Here's another use case for the `/usr/bin/ansible` command line.  Ansible can SCP lots of files to multiple machines in parallel. If you do decide you want to check on the job status later, you can use the async_status module, passing it the job id that was returned when you ran the original job in the background:: If you don't want to use ssh-agent and want to instead SSH with a password instead of keys, you can with ``--ask-pass`` (``-k``), but it's much better to just use ssh-agent. If you haven't read :doc:`intro_inventory` already, please look that over a bit first and then we'll get going. If you use playbooks, you can also take advantage of the ``template`` module, which takes this another step further.  (See module and playbook documentation). Introduction To Ad-Hoc Commands It is also possible to sudo to a user other than root using ``--sudo-user`` (``-U``):: It's also possible to filter this output to just export certain facts, see the "setup" module documentation for details. Let's use Ansible's command line tool to reboot all web servers in Atlanta, 10 at a time.  First, let's set up SSH-agent so it can remember our credentials:: Long running operations can be backgrounded, and their status can be checked on later. If you kick hosts and don't want to poll, it looks like this:: Managing Packages Managing Services Now to run the command on all servers in a group, in this case, *atlanta*, in 10 parallel forks:: Often you'll not want to just do things from your user account.  If you want to run commands through sudo:: Ok, so those are basics.  If you didn't read about patterns and groups yet, go back and read :doc:`intro_patterns`. Parallelism and Shell Commands Poll mode is smart so all jobs will be started before polling will begin on any machine. Be sure to use a high enough ``--forks`` value if you want to get all of your jobs started very quickly. After the time limit (in seconds) runs out (``-B``), the process on the remote nodes will be terminated. Polling is built-in and looks like this:: Questions? Help? Ideas?  Stop by the list on Google Groups Rarely, some users have security rules where they constrain their sudo environment to running specific command paths only. This does not work with ansible's no-bootstrapping philosophy and hundreds of different modules. If doing this, use Ansible from a special account that does not have this constraint. One way of doing this without sharing access to unauthorized users would be gating Ansible with :doc:`tower`, which can hold on to an SSH credential and let members of certain organizations use it on their behalf without having direct access. Read more about facts at :doc:`playbooks_variables` once you're ready to read up on :doc:`Playbooks <playbooks>`. See the :doc:`modules` section for details on all of the available options, including how to manipulate groups and group membership. Since Ansible modules can notify change handlers it is possible to tell Ansible to run specific tasks when the code is updated, such as deploying Perl/Python/PHP/Ruby directly from git and then restarting apache. So far we've been demoing simple command execution, but most Ansible modules usually do not work like simple scripts. They make the remote system look like you state, and run the commands necessary to get it there.  This is commonly referred to as 'idempotence', and is a core design goal of Ansible. However, we also recognize that running arbitrary commands is equally important, so Ansible easily supports both. The 'user' module allows easy creation and manipulation of existing user accounts, as well as removal of user accounts that may exist:: The :ref:`command` module does not support shell variables and things like piping.  If we want to execute a module using a shell, use the 'shell' module instead. Read more about the differences on the :doc:`modules` page. The ``-f 10`` in the above specifies the usage of 10 simultaneous processes to use.   You can also set this in :doc:`intro_configuration` to avoid setting it again.  The default is actually 5, which is really small and conservative.  You are probably going to want to talk to a lot more simultaneous hosts so feel free to crank this up.  If you have more hosts than the value set for the fork count, Ansible will talk to them, but it will take a little longer.  Feel free to push this value as high as your system can handle it! The ``file`` module allows changing ownership and permissions on files.  These same options can be passed directly to the ``copy`` module as well:: The ``file`` module can also create directories, similar to ``mkdir -p``:: The above example says "run for 30 minutes max (``-B``: 30*60=1800), poll for status (``-P``) every 60 seconds". The following examples show how to use `/usr/bin/ansible` for running ad hoc tasks. There are modules available for yum and apt.  Here are some examples with yum. This is a good place to start to understand the basics of what Ansible can do prior to learning the playbooks language -- ad-hoc commands can also be used to do quick things that you might not necessarily want to write a full playbook for. Time Limited Background Operations To transfer a file directly to many servers:: Topics Typically you'll only be backgrounding long-running shell commands or software upgrades only.  Backgrounding the copy module does not do a background file transfer.  :doc:`Playbooks <playbooks>` also support polling, and have a simplified syntax for this. Use ``--ask-sudo-pass`` (``-K``) if you are not using passwordless sudo.  This will interactively prompt you for the password to use. Use of passwordless sudo makes things easier to automate, but it's not required. Users and Groups Using Ansible for configuration management & deployment Using the :ref:`shell` module looks like this:: What's an ad-hoc command? When running any command with the Ansible *ad hoc* CLI (as opposed to :doc:`Playbooks <playbooks>`), pay particular attention to shell quoting rules, so the local shell doesn't eat a variable before it gets passed to Ansible. For example, using double vs single quotes in the above example would evaluate the variable on the box you were on. You can also select what Ansible "module" you want to run.  Normally commands also take a ``-m`` for module name, but the default module name is 'command', so we didn't need to specify that all of the time.  We'll use ``-m`` in later examples to run some other :doc:`modules`. `Mailing List <http://groups.google.com/group/ansible-project>`_ `irc.freenode.net <http://irc.freenode.net>`_ 