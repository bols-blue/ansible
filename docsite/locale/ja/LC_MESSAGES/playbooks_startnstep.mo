��    
      l               �   �   �   v   V  >   �               )  P   .  s     �   �  u  �  �     v   �  >        ^     m     {  P   �  s   �  �   E   Answering "y" will execute the task, answering "n" will skip the task, and answering "c" will continue executing all the remaining tasks without asking. If you want to start executing your playbook at a particular task, you can do so with the ``--start-at-task`` option:: Playbooks can also be executed interactively with ``--step``:: Start and Step Start-at-task Step The above will start executing your playbook at a task named "install packages". This shows a few alternative ways to run playbooks. These modes are very useful for testing new plays or debugging. This will cause ansible to stop on each task, and ask if it should execute that task. Say you had a task called "configure ssh", the playbook run will stop and ask:: Project-Id-Version: Ansible Documentation 0.01
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
 Answering "y" will execute the task, answering "n" will skip the task, and answering "c" will continue executing all the remaining tasks without asking. If you want to start executing your playbook at a particular task, you can do so with the ``--start-at-task`` option:: Playbooks can also be executed interactively with ``--step``:: Start and Step Start-at-task Step The above will start executing your playbook at a task named "install packages". This shows a few alternative ways to run playbooks. These modes are very useful for testing new plays or debugging. This will cause ansible to stop on each task, and ask if it should execute that task. Say you had a task called "configure ssh", the playbook run will stop and ask:: 