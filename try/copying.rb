#!/usr/bin/ruby

$:.unshift File.join(File.dirname(__FILE__), '..', 'lib')

require 'rye'

boxA = Rye::Box.new
boxB = Rye::Box.new('127.0.0.1', :user => 'delano', :safe => false, :debug => STDOUT)
set = Rye::Set.new
set.add_boxes(boxA, boxB)

#p boxA['/tmp/ssh-test'].cat.stderr

boxB['/tmp/ssh-test'].copy_to boxA['/tmp'], boxA['/tmp']

#p boxB['/etc'].ls('-l hosts')
