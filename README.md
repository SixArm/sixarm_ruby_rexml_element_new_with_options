# SixArm.com » Ruby » <br> REXML::Element.new_with_options methods to build elements

* Doc: <http://sixarm.com/sixarm_ruby_rexml_element_new_with_options/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_rexml_element_new_with_options>
* Repo: <http://github.com/sixarm/sixarm_ruby_rexml_element_new_with_options>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

This adds convenience methods to REXML::Element so we can create an Element easily.

Example:

    e = Element.new_with_options(:name => "foo", :text => "bar")                                                                                                                                                                                                           
    #=> element with name "foo" and text "bar"  

There are options for creating an Element with children, attributes, text, and
additional methods that can create a table data cell and table row.

For docs go to <http://sixarm.com/sixarm_ruby_rexml_element_new_with_options/doc>

Want to help? We're happy to get pull requests.


## Install quickstart

Gem:

    gem install sixarm_ruby_rexml_element_new_with_options

Bundler:

    gem "sixarm_ruby_rexml_element_new_with_options", "~>1.2.0"

Require:

    require "sixarm_ruby_rexml_element_new_with_options"


## Install with security (optional)

To enable high security	for all	our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_rexml_element_new_with_options --trust-policy HighSecurity


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


## Changes

* 2012-03-18 1.2.0 Lift from SixArm HTX


## License

You may choose any of these open source licenses:

  * Apache License
  * BSD License
  * CreativeCommons License, Non-commercial Share Alike
  * GNU General Public License Version 2 (GPL 2)
  * GNU Lesser General Public License (LGPL)
  * MIT License
  * Perl Artistic License
  * Ruby License

The software is provided "as is", without warranty of any kind, 
express or implied, including but not limited to the warranties of 
merchantability, fitness for a particular purpose and noninfringement. 

In no event shall the authors or copyright holders be liable for any 
claim, damages or other liability, whether in an action of contract, 
tort or otherwise, arising from, out of or in connection with the 
software or the use or other dealings in the software.

This license is for the included software that is created by SixArm;
some of the included software may have its own licenses, copyrights, 
authors, etc. and these do take precedence over the SixArm license.

Copyright (c) 2005-2015 Joel Parker Henderson
