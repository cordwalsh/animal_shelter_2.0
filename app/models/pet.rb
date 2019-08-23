class Pet < ApplicationRecord
  def self.random
     ActiveRecord::Base.connection.execute("SELECT * FROM pets ORDER BY random() LIMIT(1)").first
  end
  scope :random, -> {order("RANDOM()").limit(1)}

  scope :search, -> (name) { where("name", "%#{name}%")}
end
