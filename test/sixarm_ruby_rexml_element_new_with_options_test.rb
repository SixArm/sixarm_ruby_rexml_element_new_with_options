# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start
require "sixarm_ruby_rexml_element_new_with_options"
require "pathname"

describe REXML::Element do

  before do
    NAME ||= "foo"
    TEXT ||= "bar"
    CHILDREN ||= [REXML::Element.new, REXML::Element.new, REXML::Element.new]
  end

  describe ".new_with_options" do

    it "with defaults" do
      e = REXML::Element.new_with_options
      e.name.must_equal nil
      e.get_text.to_s.must_equal ""
      e.elements.to_a.must_equal []
    end

    it "with name" do
      e = REXML::Element.new_with_options(:name => NAME)
      e.name.must_equal NAME
    end

    it "with text" do
      e = REXML::Element.new_with_options(:text => TEXT)
      e.get_text.to_s.must_equal TEXT
    end

    it "with children" do
      e = REXML::Element.new_with_options(:children => CHILDREN)
      e.elements.to_a.must_equal CHILDREN
    end

  end

  describe ".new_with_options_as_td" do

    it "with defaults" do
      e = REXML::Element.new_with_options_as_td
      e.name.must_equal "td"
    end

    it "with name" do
      e = REXML::Element.new_with_options(:name => NAME)
      e.name.must_equal NAME
    end

    it "with text" do
      e = REXML::Element.new_with_options_as_td(:text => TEXT)
      e.get_text.to_s.must_equal TEXT
    end

    it "with children" do
      e = REXML::Element.new_with_options_as_td(:children => CHILDREN)
      e.elements.to_a.must_equal CHILDREN
    end

  end

  describe ".new_with_options_as_tr" do

    it "with defaults" do
      e = REXML::Element.new_with_options_as_tr
      e.name.must_equal "tr"
    end

    it "with name" do
      e = REXML::Element.new_with_options_as_tr(:name => NAME)
      e.name.must_equal NAME
    end

    it "with text" do
      e = REXML::Element.new_with_options_as_tr(:text => TEXT)
      e.get_text.to_s.must_equal TEXT
    end

    it "with children" do
      e = REXML::Element.new_with_options_as_tr(:children => CHILDREN)
      e.elements.to_a.must_equal CHILDREN
    end

    it "with cells" do
      cells = ["t0", "t1", "t2"]
      e = REXML::Element.new_with_options_as_tr(:cells => cells)
      e.elements.to_a.map{|x| x.get_text.to_s}.must_equal cells
    end
  end

end
