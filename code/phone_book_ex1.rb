#!/usr/local/bin/ruby

# Add second version
require 'phonebook_module'

# Goal: Get you hands dirty with a simple problem
# Use of Hash, Classes, instances

# Second version: demonstrates use with Module
# need to change the logic a bit in search
class PhoneBook
  # add for second version
  include PhoneHelper
    
  def initialize
    @listing = {}
  end
  
  # Watch case on add...
  def add(name,number)
    @listing[name] = number
  end
  
  def get_number(name)
    @listing[name]
  end
  
  def list
    @listing.each do |n,v|
      puts "Name: #{n} Number: #{v}"
    end
  end
  
  def search(name)
    # first version
    # @listing.fetch(name,"No listing found for #{name}")
    
    # add this logic for module use
    if @listing.has_key?(name)
      format_listing(name,@listing[name])
    else
      "Not found..."
    end
  end
end

p = PhoneBook.new
p.add("Bryson","1234")
p.add("Smith","3455")
puts p.search("Bryson")
puts p.search("Wilson")
p.list
puts "Found #{p.get_number('Bryson')}"
