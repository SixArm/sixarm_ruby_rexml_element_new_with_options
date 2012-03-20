# -*- coding: utf-8 -*-
=begin rdoc
Please see README
=end

require 'rexml/document'

module REXML

  class Element

    # Create a new Element with options:
    #
    #   * name
    #   * attributes
    #   * text
    #   * children
    #
    # @example
    #
    #     e = Element.new_with_options(:name => "foo", :text => "bar")
    #     #=> element with name "foo" and text "bar"
    #
    # @return the new Element

    def self.new_with_options(ops={})
      e = Element.new(ops[:name])
      if ops[:attributes] then e.add_attributes(ops[:attributes]) end
      if ops[:text] then e.add_text(ops[:text]) end
      if ops[:children] then ops[:children].each {|child| e << child } end
      return e
    end


    # Create a new Element as a "td" table data cell.
    #    
    #   * name defaults to "td"
    #   * attributes
    #   * text
    #   * children
    #
    # @example
    #
    #     e = Element.new_with_options_as_td(:text => "bar")
    #     #=> element with name "td" and text "bar"
    #
    # @return the new Element

    def self.new_with_options_as_td(ops={})
      return new_with_options({:name => 'td'}.merge(ops))
    end


    # Create a new Element with options as a "tr" table row:
    #
    #   * name defaults to "tr"
    #   * attributes
    #   * text
    #   * children
    #   * cells: maps each cell's string to a new child Element using new_with_options_td
    #
    # @example
    #
    #     e = Element.new_with_options_as_tr(:text => "bar")
    #     #=> element with name=="tr" and text=="bar"
    #
    # @example of table cells:
    #
    #     e = Element.new_with_options_as_tr(:cells => ["a", "b", "c"])
    #     #=> element with name=="tr" and children with text "a", "b", "c"
    #
    # @return the new Element

    def self.new_with_options_as_tr(ops={})
      if ops[:cells] 
        ops[:children] ||= []
        ops[:children] = ops[:cells].map{|cell| Element.new_with_options_as_td(:text => cell)}
      end
      return new_with_options({:name => 'tr'}.merge(ops))
    end

  end

end
