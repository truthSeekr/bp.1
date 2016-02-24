class Kurs < ActiveRecord::Base
  has_many :zgloszenia
  acts_as_votable 
end
