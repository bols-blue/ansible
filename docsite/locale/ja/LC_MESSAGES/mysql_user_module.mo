��          �               <  -   =  	  k  �   u     +  �   4  \  �  �  &     �     �     �  v       �     	  �   	  �   �	     
  :   0
  u  k
  -   �  	    �        �  �   �  \  m  �  �     �     �     �  v   �    (     �  �   �  �   5     �  :   �   Adds or removes a user from a MySQL database. Both ``login_password`` and ``login_username`` are required when you are passing credentials. If none are present, the module will attempt to read the credentials from ``~/.my.cnf``, and finally fall back to using the MySQL default login of 'root' with no password. Documentation updates for this module can also be edited directly by submitting a pull request to the module source code, just look for the "DOCUMENTATION" block in the source tree. Examples For help in developing on modules, should you be so inclined, please read :doc:`community`, :doc:`developing_test_pr` and :doc:`developing_modules`. If you believe you have found a bug in this module, and are already running the latest stable or development version of Ansible, first look in the `issue tracker at github.com/ansible/ansible-modules-core <http://github.com/ansible/ansible-modules-core>`_ to see if a bug has already been filed.  If not, we would be grateful if you would file one. MySQL server installs with default login_user of 'root' and no password. To secure this user as part of an idempotent playbook, you must create at least two tasks: the first must change the root user's password, without providing any login_user/login_password details. The second must drop a ~/.my.cnf file containing the new root credentials. Subsequent runs of the playbook will then succeed by reading the new credentials from the file. Options Requires ConfigParser Requires MySQLdb Requires the MySQLdb Python package on the remote host. For Ubuntu, this is as easy as apt-get install python-mysqldb. Should you have a question rather than a bug report, inquries are welcome on the `ansible-project google group <https://groups.google.com/forum/#!forum/ansible-project>`_ or on Ansible's "#ansible" channel, located on irc.freenode.net.   Development oriented topics should instead use the similar `ansible-devel google group <https://groups.google.com/forum/#!forum/ansible-devel>`_. Synopsis The source of this module is hosted on GitHub in the `ansible-modules-core <http://github.com/ansible/ansible-modules-core>`_ repo. This is a "core" ansible module, which means it will receive slightly higher priority for all requests than those in the "extras" repos. This is a Core Module mysql_user - Adds or removes a user from a MySQL database. Project-Id-Version: Ansible Documentation 0.01
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
 Adds or removes a user from a MySQL database. Both ``login_password`` and ``login_username`` are required when you are passing credentials. If none are present, the module will attempt to read the credentials from ``~/.my.cnf``, and finally fall back to using the MySQL default login of 'root' with no password. Documentation updates for this module can also be edited directly by submitting a pull request to the module source code, just look for the "DOCUMENTATION" block in the source tree. Examples For help in developing on modules, should you be so inclined, please read :doc:`community`, :doc:`developing_test_pr` and :doc:`developing_modules`. If you believe you have found a bug in this module, and are already running the latest stable or development version of Ansible, first look in the `issue tracker at github.com/ansible/ansible-modules-core <http://github.com/ansible/ansible-modules-core>`_ to see if a bug has already been filed.  If not, we would be grateful if you would file one. MySQL server installs with default login_user of 'root' and no password. To secure this user as part of an idempotent playbook, you must create at least two tasks: the first must change the root user's password, without providing any login_user/login_password details. The second must drop a ~/.my.cnf file containing the new root credentials. Subsequent runs of the playbook will then succeed by reading the new credentials from the file. Options Requires ConfigParser Requires MySQLdb Requires the MySQLdb Python package on the remote host. For Ubuntu, this is as easy as apt-get install python-mysqldb. Should you have a question rather than a bug report, inquries are welcome on the `ansible-project google group <https://groups.google.com/forum/#!forum/ansible-project>`_ or on Ansible's "#ansible" channel, located on irc.freenode.net.   Development oriented topics should instead use the similar `ansible-devel google group <https://groups.google.com/forum/#!forum/ansible-devel>`_. Synopsis The source of this module is hosted on GitHub in the `ansible-modules-core <http://github.com/ansible/ansible-modules-core>`_ repo. This is a "core" ansible module, which means it will receive slightly higher priority for all requests than those in the "extras" repos. This is a Core Module mysql_user - Adds or removes a user from a MySQL database. 