��          �               <     =     W  ~   h     �        �   %  +   �  �   (  �   �  ]   �  �   �  �   �  �   F  �   �  m   �  C     -   H  u  v     �	     
  ~   
     �
      �
  �   �
  +   �  �   �  �   �  ]   E  �   �  �   1  �   �  �   �  m   E  C   �  -   �   #ansible IRC chat channel :doc:`playbooks` Alternatively, if you do not need to wait on the task to complete, you may "fire and forget" by specifying a poll value of 0:: An introduction to playbooks Asynchronous Actions and Polling By default tasks in playbooks block, meaning the connections stay open until the task is done on each node.  This may not always be desirable, or you may be running operations that take longer than the SSH timeout. Have a question?  Stop by the google group! If the value of ``async:`` is not high enough, this will cause the "check on it later" task to fail because the temporary status file that the ``async_status:`` is looking for will not have been written If you would like to perform a variation of the "fire and forget" where you "fire and forget, check on it later" you can perform a task similar to the following:: The easiest way to do this is to kick them off all at once and then poll until they are done. There is no default for the async time limit.  If you leave off the 'async' keyword, the task runs synchronously, which is Ansible's default. To launch a task asynchronously, specify its maximum runtime and how frequently you would like to poll for status.  The default poll value is 10 seconds if you do not specify a value for `poll`:: Using a higher value for ``--forks`` will result in kicking off asynchronous tasks even faster.  This also increases the efficiency of polling. You shouldn't "fire and forget" with operations that require exclusive locks, such as yum transactions, if you expect to run other commands later in the playbook against those same resources. You will also want to use asynchronous mode on very long running operations that might be subject to timeout. `User Mailing List <http://groups.google.com/group/ansible-devel>`_ `irc.freenode.net <http://irc.freenode.net>`_ Project-Id-Version: Ansible Documentation 0.01
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
 #ansible IRC chat channel :doc:`playbooks` Alternatively, if you do not need to wait on the task to complete, you may "fire and forget" by specifying a poll value of 0:: An introduction to playbooks Asynchronous Actions and Polling By default tasks in playbooks block, meaning the connections stay open until the task is done on each node.  This may not always be desirable, or you may be running operations that take longer than the SSH timeout. Have a question?  Stop by the google group! If the value of ``async:`` is not high enough, this will cause the "check on it later" task to fail because the temporary status file that the ``async_status:`` is looking for will not have been written If you would like to perform a variation of the "fire and forget" where you "fire and forget, check on it later" you can perform a task similar to the following:: The easiest way to do this is to kick them off all at once and then poll until they are done. There is no default for the async time limit.  If you leave off the 'async' keyword, the task runs synchronously, which is Ansible's default. To launch a task asynchronously, specify its maximum runtime and how frequently you would like to poll for status.  The default poll value is 10 seconds if you do not specify a value for `poll`:: Using a higher value for ``--forks`` will result in kicking off asynchronous tasks even faster.  This also increases the efficiency of polling. You shouldn't "fire and forget" with operations that require exclusive locks, such as yum transactions, if you expect to run other commands later in the playbook against those same resources. You will also want to use asynchronous mode on very long running operations that might be subject to timeout. `User Mailing List <http://groups.google.com/group/ansible-devel>`_ `irc.freenode.net <http://irc.freenode.net>`_ 