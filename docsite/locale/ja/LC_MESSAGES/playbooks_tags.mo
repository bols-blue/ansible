��          �               l     m     �     �     �  /   �  Z   �  A   W  	   �  +   �  �   �  n   \  ]   �     )     H     U  �   Z  m   '  "   �  C   �  -   �  u  *     �     �     �     �  /   �  Z   /  A   �  	   �  +   �  �   	  n   �	  ]   �	     \
     {
     �
  �   �
  m   Z  "   �  C   �  -   /   #ansible IRC chat channel :doc:`playbooks_roles` :doc:`playbooks` An introduction to playbooks And you may also tag basic include statements:: Both of these have the function of tagging every single task inside the include statement. Both plays and tasks support a "tags:" attribute for this reason. Example:: Have a question?  Stop by the google group! If you have a large playbook it may become useful to be able to run a specific part of the configuration without running the whole playbook. If you wanted to just run the "configuration" and "packages" part of a very long playbook, you could do this:: On the other hand, if you want to run a playbook *without* certain tasks, you could do this:: Playbook organization by roles Special Tags Tags There are another 3 special keywords for tags, 'tagged', 'untagged' and 'all', which run only tagged, only untagged and all tasks respectively. By default ansible runs as if --tags all had been specified. There is a special 'always' tag that will always run a task, unless specifically skipped (--skip-tags always) You may also apply tags to roles:: `User Mailing List <http://groups.google.com/group/ansible-devel>`_ `irc.freenode.net <http://irc.freenode.net>`_ Project-Id-Version: Ansible Documentation 0.01
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
 #ansible IRC chat channel :doc:`playbooks_roles` :doc:`playbooks` An introduction to playbooks And you may also tag basic include statements:: Both of these have the function of tagging every single task inside the include statement. Both plays and tasks support a "tags:" attribute for this reason. Example:: Have a question?  Stop by the google group! If you have a large playbook it may become useful to be able to run a specific part of the configuration without running the whole playbook. If you wanted to just run the "configuration" and "packages" part of a very long playbook, you could do this:: On the other hand, if you want to run a playbook *without* certain tasks, you could do this:: Playbook organization by roles Special Tags Tags There are another 3 special keywords for tags, 'tagged', 'untagged' and 'all', which run only tagged, only untagged and all tasks respectively. By default ansible runs as if --tags all had been specified. There is a special 'always' tag that will always run a task, unless specifically skipped (--skip-tags always) You may also apply tags to roles:: `User Mailing List <http://groups.google.com/group/ansible-devel>`_ `irc.freenode.net <http://irc.freenode.net>`_ 