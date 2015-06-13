��          �               ,  �   -  �   �       �   �  w    \  �     �     �         �  �   �  �        �    �  �   �	  ;   n
  u  �
  �      �   �     r  �   {  w    \  �     �     �    �     {  �   �  �        �    �  �   �  ;   a   Ansible uses the boto configuration file (typically ~/.boto) if no credentials are provided. See http://boto.readthedocs.org/en/latest/boto_config_tut.html Documentation updates for this module can also be edited directly by submitting a pull request to the module source code, just look for the "DOCUMENTATION" block in the source tree. Examples For help in developing on modules, should you be so inclined, please read :doc:`community`, :doc:`developing_test_pr` and :doc:`developing_modules`. If parameters are not set within the module, the following environment variables can be used in decreasing order of precedence ``AWS_URL`` or ``EC2_URL``, ``AWS_ACCESS_KEY_ID`` or ``AWS_ACCESS_KEY`` or ``EC2_ACCESS_KEY``, ``AWS_SECRET_ACCESS_KEY`` or ``AWS_SECRET_KEY`` or ``EC2_SECRET_KEY``, ``AWS_SECURITY_TOKEN`` or ``EC2_SECURITY_TOKEN``, ``AWS_REGION`` or ``EC2_REGION`` If you believe you have found a bug in this module, and are already running the latest stable or development version of Ansible, first look in the `issue tracker at github.com/ansible/ansible-modules-core <http://github.com/ansible/ansible-modules-core>`_ to see if a bug has already been filed.  If not, we would be grateful if you would file one. Options Requires boto Should you have a question rather than a bug report, inquries are welcome on the `ansible-project google group <https://groups.google.com/forum/#!forum/ansible-project>`_ or on Ansible's "#ansible" channel, located on irc.freenode.net.   Development oriented topics should instead use the similar `ansible-devel google group <https://groups.google.com/forum/#!forum/ansible-devel>`_. Synopsis The source of this module is hosted on GitHub in the `ansible-modules-core <http://github.com/ansible/ansible-modules-core>`_ repo. This is a "core" ansible module, which means it will receive slightly higher priority for all requests than those in the "extras" repos. This is a Core Module This module de-registers or registers an AWS EC2 instance from the ELBs that it belongs to. Returns fact "ec2_elbs" which is a list of elbs attached to the instance if state=absent is passed as an argument. Will be marked changed when called only if there are ELBs found to operate on. ``AWS_REGION`` or ``EC2_REGION`` can be typically be used to specify the AWS region, when required, but this can also be configured in the boto config file ec2_elb - De-registers or registers instances from EC2 ELBs Project-Id-Version: Ansible Documentation 0.01
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
 Ansible uses the boto configuration file (typically ~/.boto) if no credentials are provided. See http://boto.readthedocs.org/en/latest/boto_config_tut.html Documentation updates for this module can also be edited directly by submitting a pull request to the module source code, just look for the "DOCUMENTATION" block in the source tree. Examples For help in developing on modules, should you be so inclined, please read :doc:`community`, :doc:`developing_test_pr` and :doc:`developing_modules`. If parameters are not set within the module, the following environment variables can be used in decreasing order of precedence ``AWS_URL`` or ``EC2_URL``, ``AWS_ACCESS_KEY_ID`` or ``AWS_ACCESS_KEY`` or ``EC2_ACCESS_KEY``, ``AWS_SECRET_ACCESS_KEY`` or ``AWS_SECRET_KEY`` or ``EC2_SECRET_KEY``, ``AWS_SECURITY_TOKEN`` or ``EC2_SECURITY_TOKEN``, ``AWS_REGION`` or ``EC2_REGION`` If you believe you have found a bug in this module, and are already running the latest stable or development version of Ansible, first look in the `issue tracker at github.com/ansible/ansible-modules-core <http://github.com/ansible/ansible-modules-core>`_ to see if a bug has already been filed.  If not, we would be grateful if you would file one. Options Requires boto Should you have a question rather than a bug report, inquries are welcome on the `ansible-project google group <https://groups.google.com/forum/#!forum/ansible-project>`_ or on Ansible's "#ansible" channel, located on irc.freenode.net.   Development oriented topics should instead use the similar `ansible-devel google group <https://groups.google.com/forum/#!forum/ansible-devel>`_. Synopsis The source of this module is hosted on GitHub in the `ansible-modules-core <http://github.com/ansible/ansible-modules-core>`_ repo. This is a "core" ansible module, which means it will receive slightly higher priority for all requests than those in the "extras" repos. This is a Core Module This module de-registers or registers an AWS EC2 instance from the ELBs that it belongs to. Returns fact "ec2_elbs" which is a list of elbs attached to the instance if state=absent is passed as an argument. Will be marked changed when called only if there are ELBs found to operate on. ``AWS_REGION`` or ``EC2_REGION`` can be typically be used to specify the AWS region, when required, but this can also be configured in the boto config file ec2_elb - De-registers or registers instances from EC2 ELBs 