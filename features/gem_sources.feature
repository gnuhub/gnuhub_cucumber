Feature: gem sources
  使用淘宝的gems镜像无法安装abaru,使用官方的可以
  需要保证gems镜像是官方地址
  Scenario: gem sources should be rubygems
    When I run `gem sources -l`
    Then it should pass with:
      """
      *** CURRENT SOURCES ***

      https://rubygems.org/
      """