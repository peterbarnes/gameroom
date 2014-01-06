class Widget
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name, :type => String
  field :data, :type => Integer
end