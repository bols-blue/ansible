��    0      �                        -    L  4   g  r   �  
     6     �   Q  &   �  "        )    =  �   W  �   �  v   �  w   	    }	  [   �
  f   �
  �   E  �   �  �   �  O   �  �     �   �  �   �  �   z  l   *  �   �  R   1  K   �  T   �  �   %  �   �    �  n   �  �   -  9  �  $     o   >  ?   �  �   �    �  �   �  Z   W  �   �  �   �  u  R     �     �    �  4   !  r   G!  
   �!  6   �!  �   �!  &   �"  "   �"     �"    �"  �   $  �   �$  v   9%  w   �%    (&  [   -'  f   �'  �   �'  �   �(  �   �)  O   z*  �   �*  �   �+  �   u,  �   %-  l   �-  �   B.  R   �.  K   //  T   {/  �   �/  �   k0    b1  n   i3  �   �3  9  �4  $   �5  o   �5  ?   Y6  �   �6    97  �   A8  Z   9  �   ]9  �   H:   "Works for me!" Activating The Source Checkout Ansible does provide integration tests for cloud-based modules as well, however we do not recommend using them for some users due to the associated costs from the cloud providers.  As such, typically it's better to run specific parts of the integration battery and skip these tests. At this point, you should be ready to begin testing! Even if you're not a developer, helping test pull requests for bug fixes and features is still immensely valuable. Example!:: Finding A Pull Request and Checking It Out On A Branch First, you will need to configure your testing environment with the necessary tools required to run our test suites. You will need at least:: For Those About To Test, We Salute You Get Started with A Source Checkout Helping Testing PRs If the GitHub user interface shows that the pull request will not merge cleanly, we do not recommend proceeding if you are not somewhat familiar with git and coding, as you will have to resolve a merge conflict.  This is the responsibility of the original pull request contributor. If the PR does not resolve the issue, or if you see any failures from the unit/integration tests, just include that output instead:: If the PR is a bug-fix pull request, the first things to do are to run the suite of unit and integration tests, to ensure the pull request does not break current functionality:: If the pull request resolves the issue, please leave a comment on the pull request, showing the following information: If there's not a playbook, you may have to copy and paste playbook snippets or run a ad-hoc command that was pasted in. If updating your repo for testing something module related, use "git rebase origin/devel" and then "git submodule update" to fetch the latest development versions of modules.  Skipping the "git submodule update" step will result in versions that will be stale. If you have previously forked the repository on GitHub, you could also clone it from there. If you want to run the full integration test suite you'll also need the following packages installed:: If you'd like your testing environment to always use the latest source, you could call the command from startup scripts (for example, `.bash_profile`). If you're a developer, one of the most valuable things you can do is look at the github issues list and help fix bugs.  We almost always prioritize bug fixing over feature development, so clearing bugs out of the way is one of the best things you can do. In many cases, code should add tests that prove it works but that's not ALWAYS possible and tests are not always comprehensive, especially when a user doesn't have access to a wide variety of platforms, or that is using an API or web service. In some cases, you may wish to share playbook output from the test run as well. In these cases, live testing against real equipment can be more valuable than automation that runs against simulated interfaces. In any case, things should always be tested manually the first time too. Integration tests aren't the end all beat all - in many cases what is fixed might not *HAVE* a test, so determining if it works means checking the functionality of the system and making sure it does what it said it would do. It is important that the PR request target be ansible:devel, as we do not accept pull requests into any other branch. Dot releases are cherry-picked manually by ansible staff. Next, find the pull request you'd like to test and make note of the line at the top which describes the source and destination repositories. It will look something like this:: Once the files are in place, you can run the provided playbook (if there is one) to test the functionality:: Our issue template also included sections for "Expected Output" and "Actual Output", which should be used to gauge the output from the provided examples. Pull requests for bug-fixes should reference the bug issue number they are fixing. Second, if you haven't already, clone the Ansible source code from GitHub:: Simply source it (to use the Linux/Unix terminology) to begin using it immediately:: Since some reproducers can be quite involved, you might wish to create a testing directory with the issue # as a sub- directory to keep things organized:: Some users do not create feature branches, which can cause problems when they have multiple, un-related commits in their version of `devel`. If the source looks like `someuser:devel`, make sure there is only one commit listed on the pull request. Testing source code from GitHub pull requests sent to us does have some inherent risk, as the source code sent may have mistakes or malicious code that could have a negative impact on your system. We recommend doing all testing on a virtual machine, whether a cloud instance, or locally.  Some users like Vagrant or Docker for this, but they are optional.  It is also useful to have virtual machines of different Linux or other flavors, since some features (apt vs. yum, for example) are specific to those OS versions. Thankfully helping test ansible is pretty straightforward, assuming you are already used to how ansible works. The Ansible source includes a script that allows you to use Ansible directly from source without requiring a full installation, that is frequently used by developers on Ansible. The first command creates and switches to a new branch named testing_PRXXXX, where the XXXX is the actual issue number associated with the pull request (for example, 1234). This branch is based on the devel branch. The second command pulls the new code from the users feature branch into the newly created branch. The output from `ansible --version`. The username and branch at the end are the important parts, which will be turned into git commands as follows:: This goes for testing new features as well as testing bugfixes. This script modifies the PYTHONPATH enviromnent variables (along with a few other things), which will be temporarily set as long as your shell session is open. We encourage users to provide playbook examples for bugs that show how to reproduce the error, and these playbooks should be used to verify the bugfix does resolve the issue if available.  You may wish to also do your own review to poke the corners of the change. We understand some users may be inexperienced with git, or other aspects of the above procedure, so feel free to stop by ansible-devel list for questions and we'd be happy to help answer them. When you are done testing a feature branch, you can remove it with the following command:: While it should go without saying, be sure to read any playbooks before you run them.  VMs help with running untrusted content greatly, though a playbook could still do something to your computing resources that you'd rather not like. You can do this by checking out ansible, making a test branch off the main one, merging a GitHub issue, testing, and then commenting on that particular issue on GitHub. Here's how: Project-Id-Version: Ansible Documentation 0.01
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
 "Works for me!" Activating The Source Checkout Ansible does provide integration tests for cloud-based modules as well, however we do not recommend using them for some users due to the associated costs from the cloud providers.  As such, typically it's better to run specific parts of the integration battery and skip these tests. At this point, you should be ready to begin testing! Even if you're not a developer, helping test pull requests for bug fixes and features is still immensely valuable. Example!:: Finding A Pull Request and Checking It Out On A Branch First, you will need to configure your testing environment with the necessary tools required to run our test suites. You will need at least:: For Those About To Test, We Salute You Get Started with A Source Checkout Helping Testing PRs If the GitHub user interface shows that the pull request will not merge cleanly, we do not recommend proceeding if you are not somewhat familiar with git and coding, as you will have to resolve a merge conflict.  This is the responsibility of the original pull request contributor. If the PR does not resolve the issue, or if you see any failures from the unit/integration tests, just include that output instead:: If the PR is a bug-fix pull request, the first things to do are to run the suite of unit and integration tests, to ensure the pull request does not break current functionality:: If the pull request resolves the issue, please leave a comment on the pull request, showing the following information: If there's not a playbook, you may have to copy and paste playbook snippets or run a ad-hoc command that was pasted in. If updating your repo for testing something module related, use "git rebase origin/devel" and then "git submodule update" to fetch the latest development versions of modules.  Skipping the "git submodule update" step will result in versions that will be stale. If you have previously forked the repository on GitHub, you could also clone it from there. If you want to run the full integration test suite you'll also need the following packages installed:: If you'd like your testing environment to always use the latest source, you could call the command from startup scripts (for example, `.bash_profile`). If you're a developer, one of the most valuable things you can do is look at the github issues list and help fix bugs.  We almost always prioritize bug fixing over feature development, so clearing bugs out of the way is one of the best things you can do. In many cases, code should add tests that prove it works but that's not ALWAYS possible and tests are not always comprehensive, especially when a user doesn't have access to a wide variety of platforms, or that is using an API or web service. In some cases, you may wish to share playbook output from the test run as well. In these cases, live testing against real equipment can be more valuable than automation that runs against simulated interfaces. In any case, things should always be tested manually the first time too. Integration tests aren't the end all beat all - in many cases what is fixed might not *HAVE* a test, so determining if it works means checking the functionality of the system and making sure it does what it said it would do. It is important that the PR request target be ansible:devel, as we do not accept pull requests into any other branch. Dot releases are cherry-picked manually by ansible staff. Next, find the pull request you'd like to test and make note of the line at the top which describes the source and destination repositories. It will look something like this:: Once the files are in place, you can run the provided playbook (if there is one) to test the functionality:: Our issue template also included sections for "Expected Output" and "Actual Output", which should be used to gauge the output from the provided examples. Pull requests for bug-fixes should reference the bug issue number they are fixing. Second, if you haven't already, clone the Ansible source code from GitHub:: Simply source it (to use the Linux/Unix terminology) to begin using it immediately:: Since some reproducers can be quite involved, you might wish to create a testing directory with the issue # as a sub- directory to keep things organized:: Some users do not create feature branches, which can cause problems when they have multiple, un-related commits in their version of `devel`. If the source looks like `someuser:devel`, make sure there is only one commit listed on the pull request. Testing source code from GitHub pull requests sent to us does have some inherent risk, as the source code sent may have mistakes or malicious code that could have a negative impact on your system. We recommend doing all testing on a virtual machine, whether a cloud instance, or locally.  Some users like Vagrant or Docker for this, but they are optional.  It is also useful to have virtual machines of different Linux or other flavors, since some features (apt vs. yum, for example) are specific to those OS versions. Thankfully helping test ansible is pretty straightforward, assuming you are already used to how ansible works. The Ansible source includes a script that allows you to use Ansible directly from source without requiring a full installation, that is frequently used by developers on Ansible. The first command creates and switches to a new branch named testing_PRXXXX, where the XXXX is the actual issue number associated with the pull request (for example, 1234). This branch is based on the devel branch. The second command pulls the new code from the users feature branch into the newly created branch. The output from `ansible --version`. The username and branch at the end are the important parts, which will be turned into git commands as follows:: This goes for testing new features as well as testing bugfixes. This script modifies the PYTHONPATH enviromnent variables (along with a few other things), which will be temporarily set as long as your shell session is open. We encourage users to provide playbook examples for bugs that show how to reproduce the error, and these playbooks should be used to verify the bugfix does resolve the issue if available.  You may wish to also do your own review to poke the corners of the change. We understand some users may be inexperienced with git, or other aspects of the above procedure, so feel free to stop by ansible-devel list for questions and we'd be happy to help answer them. When you are done testing a feature branch, you can remove it with the following command:: While it should go without saying, be sure to read any playbooks before you run them.  VMs help with running untrusted content greatly, though a playbook could still do something to your computing resources that you'd rather not like. You can do this by checking out ansible, making a test branch off the main one, merging a GitHub issue, testing, and then commenting on that particular issue on GitHub. Here's how: 