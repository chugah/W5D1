require 'rubygems'
require 'ai4r'
include Ai4r::Classifiers
include Ai4r::Data
include Ai4r::Clusterers
require_relative './DATA_SET.rb'



data_set = Ai4r::Data::DataSet.new(:data_items => DATA_ITEMS, :data_labels => DATA_LABELS)
id3 = Ai4r::Classifiers::ID3.new.build(data_set)

puts id3.get_rules
  
#id3.eval(['AMERICANO', '<30', 'M'])
