Feature: ruby -e
  Scenario: print something
    When I run `ruby -e "puts 'hello'"`
    Then it should pass with:
      """
      hello
      """
  Scenario: hmac-sha1

  In order to using hmac-sha1 in kuaipan
  I want to install ruby-hmac
  gem install ruby-hmac

    When I run `gem list`
    Then the output should contain:
    """
    ruby-hmac
    """