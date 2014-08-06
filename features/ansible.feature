Feature: ansible
  
  In order to avoid writing scripts or custom code to deploy and update your applications
  automate in a language that approaches plain English,
  using SSH, with no agents to install on remote systems
  As a developer using ansible
  I want to install and config ansible on my mac
  https://github.com/gnuhub/ansible.ubuntu.phabricator/issues/23

    Scenario: ansible.install
    
    ansible should be installed on the mac,using SSH, with no agents to install on remote systems
    brew update
    brew install ansible
    
    When I run `ansible --version`
    Then the output should contain:
    """
    ansible 1.6.10
    """


    Scenario: ansible.hosts

    ansible register all remote hosts in inventory host file
    when i install ansible using brew
    the inventory host file is /usr/local/etc/ansible/hosts

    Then a file named "/usr/local/etc/ansible/hosts" should exist


    Scenario: ansible.ruby

      In order to install ruby using ansible
      As a developer using ansible
      I want to install the role eduardodeoh.ruby
      ansible-galaxy install eduardodeoh.ruby

      When I run `ansible-galaxy list`
      Then the output should contain:
      """
      eduardodeoh.ruby
      """

    Scenario: ansible.git

      In order to install git using ansible
      As a developer using ansible
      I want to install role Ansibles.git
      ansible-galaxy install Ansibles.git

      When I run `ansible-galaxy list`
      Then the output should contain:
      """
      Ansibles.git
      """