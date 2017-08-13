# SixArm.com → Ruby → <br> REXML::Element.new_with_options methods to build elements

* Doc: <http://sixarm.com/sixarm_ruby_rexml_element_new_with_options/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_rexml_element_new_with_options>
* Repo: <http://github.com/sixarm/sixarm_ruby_rexml_element_new_with_options>
<!--HEADER-SHUT-->


## Introduction

This adds convenience methods to REXML::Element so we can create an Element easily.

Example:

    e = Element.new_with_options(:name => "foo", :text => "bar")                                                                                                                                                                                                           
    #=> element with name "foo" and text "bar"  

There are options for creating an Element with children, attributes, text, and
additional methods that can create a table data cell and table row.

For docs go to <http://sixarm.com/sixarm_ruby_rexml_element_new_with_options/doc>

Want to help? We're happy to get pull requests.


<!--INSTALL-OPEN-->

## Install

### Gem

Run this command in your shell or terminal:

    gem install sixarm_ruby_rexml_element_new_with_options

Or add this to your Gemfile:

    gem 'sixarm_ruby_rexml_element_new_with_options'

### Require

To require the gem in your code:

    require 'sixarm_ruby_rexml_element_new_with_options'

<!--INSTALL-SHUT-->


## Example of children

    child_1 = REXML::Element.new(...)
    child_2 = REXML::Element.new(...)
    child_3 = REXML::Element.new(...)
    e = Element.new_with_options(:children => [child_1, child_2, child_3])    
    #=> element that has child elements

## Example of table methods

    e = Element.new_with_options_as_td(:text => "bar")                                                                                                                                                                                                                     
    #=> element with name "td" and text "bar"  

    e = Element.new_with_options_as_tr(:text => "bar")                                                                                                                                                                                                                     
    #=> element with name "tr" and text "bar"  

    e = Element.new_with_options_as_tr(:cells => ["a", "b", "c"])                                                                                                                                                                                                               
    #=> element with name=="tr" and children elements with name "td" and text "a", "b", "c" 
