��    9      �              �     �  +   �     �     �          *     E  
  V     a     u  �   �  #   8  4   \     �  X   �     �     �  �     +   �     &  �   ?     	  '   
  �  7
  @   �               *  V   C    �     �     �     �  �   �  X   �  "     *   B  }   m  .   �  �     `   �  q   6     �     �  a  �  c     C   �  _   �  -   '     U     a     e  	   m     w     �  .   �  u  �     .  +   H     t     v     �     �     �  
  �     �     �  �     #   �  4   �       X        s       �   �  +   {     �  �   �    �  '   �  �  �  @   H     �     �     �  V   �         $      (      <   �   P   X   G!  "   �!  *   �!  }   �!  .   l"  �   �"  `   V#  q   �#     )$     0$  a  >$  c   �%  C   &  _   H&  -   �&     �&     �&     �&  	   �&     �&     '  .   
'   #ansible IRC chat channel (Docs about crypted save modes are pending) 1 :doc:`playbooks_conditionals` :doc:`playbooks_loops` :doc:`playbooks_variables` :doc:`playbooks` A great alternative to the password lookup plugin, if you don't need to generate random passwords on a per-host basis, would be to use :doc:`playbooks_vault`.  Read the documentation there and consider using it first, it will be more desirable for most applications. All about variables An introduction to playbooks As an alternative you can also assign lookup plugins to variables or use them elsewhere.  This macros are evaluated each time they are used in a task (or template):: Conditional statements in playbooks Contents can be read off the filesystem as follows:: Default Delimiter used by CSV file. As a special case, tab can be specified as either TAB or \t. Description Field Generated passwords contain a random mix of upper and lowercase ASCII letters, the numbers 0-9 and punctuation (". , : - _"). The default length of a generated password is 20 characters. This length can be changed by passing an extra parameter:: Have a question?  Stop by the google group! Here are some examples:: If the file already exists, no data will be written to it. If the file has contents, those contents will be read in as the password. Empty files cause the password to return as an empty string If the file exists previously, it will retrieve its contents, behaving just like with_file. Usage of variables like "{{ inventory_hostname }}" in the filepath can be used to set up random passwords per host (what simplifies password management in 'host_vars' variables). Intro to Lookups: Getting File Contents Lookup plugins allow access of data in Ansible from outside sources.  These plugins are evaluated on the Ansible control machine, and can include reading the filesystem but also contacting external datastores and services. These values are then made available using the standard templating system in Ansible, and are typically used to load variables or templates with information from those systems. Lookups occur on the local computer, not on the remote computer. Looping in playbooks More Lookups Name of the file to load Since 1.9 you can pass wantlist=True to lookups to use in jinja2 template "for" loops. Starting in version 1.4, password accepts a "chars" parameter to allow defining a custom character set in the generated passwords. It accepts comma separated list of names that are either string module attributes (ascii_letters,digits, etc) or are used literally:: TAB The CSV File Lookup The Password Lookup The ``csvfile`` lookup reads the contents of a file in CSV (comma-separated value) format. The lookup looks for the row where the first column matches ``keyname``, and returns the value in the first column, unless a different column is specified. The ``csvfile`` lookup supports several arguments. The format for passing arguments is:: The column to output, indexed by 0 The default delimiter is TAB, *not* comma. The example below shows the contents of a CSV file named elements.csv with information about the periodic table of elements:: The file lookup is the most basic lookup type. The first value in the argument is the ``key``, which must be an entry that appears exactly once in column 0 (the first column, 0-indexed) of the table. All other arguments are optional. This is considered an advanced feature, and many users will probably not rely on these features. To enter comma use two commas ',,' somewhere - preferably at the end. Quotes and double quotes are not supported. Topics Using Lookups Various *lookup plugins* allow additional ways to iterate over data.  In :doc:`Loops <playbooks_loops>` you will learn how to use them to walk over collections of numerous types.  However, they can also be used to pull in data from remote sources, such as shell commands or even key value stores. This section will cover lookup plugins in this capacity. We can use the ``csvfile`` plugin to look up the atomic number or atomic of Lithium by its symbol:: `User Mailing List <http://groups.google.com/group/ansible-devel>`_ ``password`` generates a random plaintext password and stores it in a file at a given filepath. `irc.freenode.net <http://irc.freenode.net>`_ ansible.csv col default delimiter empty string file return value if the key is not in the csv file Project-Id-Version: Ansible Documentation 0.01
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
 #ansible IRC chat channel (Docs about crypted save modes are pending) 1 :doc:`playbooks_conditionals` :doc:`playbooks_loops` :doc:`playbooks_variables` :doc:`playbooks` A great alternative to the password lookup plugin, if you don't need to generate random passwords on a per-host basis, would be to use :doc:`playbooks_vault`.  Read the documentation there and consider using it first, it will be more desirable for most applications. All about variables An introduction to playbooks As an alternative you can also assign lookup plugins to variables or use them elsewhere.  This macros are evaluated each time they are used in a task (or template):: Conditional statements in playbooks Contents can be read off the filesystem as follows:: Default Delimiter used by CSV file. As a special case, tab can be specified as either TAB or \t. Description Field Generated passwords contain a random mix of upper and lowercase ASCII letters, the numbers 0-9 and punctuation (". , : - _"). The default length of a generated password is 20 characters. This length can be changed by passing an extra parameter:: Have a question?  Stop by the google group! Here are some examples:: If the file already exists, no data will be written to it. If the file has contents, those contents will be read in as the password. Empty files cause the password to return as an empty string If the file exists previously, it will retrieve its contents, behaving just like with_file. Usage of variables like "{{ inventory_hostname }}" in the filepath can be used to set up random passwords per host (what simplifies password management in 'host_vars' variables). Intro to Lookups: Getting File Contents Lookup plugins allow access of data in Ansible from outside sources.  These plugins are evaluated on the Ansible control machine, and can include reading the filesystem but also contacting external datastores and services. These values are then made available using the standard templating system in Ansible, and are typically used to load variables or templates with information from those systems. Lookups occur on the local computer, not on the remote computer. Looping in playbooks More Lookups Name of the file to load Since 1.9 you can pass wantlist=True to lookups to use in jinja2 template "for" loops. Starting in version 1.4, password accepts a "chars" parameter to allow defining a custom character set in the generated passwords. It accepts comma separated list of names that are either string module attributes (ascii_letters,digits, etc) or are used literally:: TAB The CSV File Lookup The Password Lookup The ``csvfile`` lookup reads the contents of a file in CSV (comma-separated value) format. The lookup looks for the row where the first column matches ``keyname``, and returns the value in the first column, unless a different column is specified. The ``csvfile`` lookup supports several arguments. The format for passing arguments is:: The column to output, indexed by 0 The default delimiter is TAB, *not* comma. The example below shows the contents of a CSV file named elements.csv with information about the periodic table of elements:: The file lookup is the most basic lookup type. The first value in the argument is the ``key``, which must be an entry that appears exactly once in column 0 (the first column, 0-indexed) of the table. All other arguments are optional. This is considered an advanced feature, and many users will probably not rely on these features. To enter comma use two commas ',,' somewhere - preferably at the end. Quotes and double quotes are not supported. Topics Using Lookups Various *lookup plugins* allow additional ways to iterate over data.  In :doc:`Loops <playbooks_loops>` you will learn how to use them to walk over collections of numerous types.  However, they can also be used to pull in data from remote sources, such as shell commands or even key value stores. This section will cover lookup plugins in this capacity. We can use the ``csvfile`` plugin to look up the atomic number or atomic of Lithium by its symbol:: `User Mailing List <http://groups.google.com/group/ansible-devel>`_ ``password`` generates a random plaintext password and stores it in a file at a given filepath. `irc.freenode.net <http://irc.freenode.net>`_ ansible.csv col default delimiter empty string file return value if the key is not in the csv file 