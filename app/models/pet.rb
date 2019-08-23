class Pet < ApplicationRecord
  def self.random
     ActiveRecord::Base.connection.execute("SELECT * FROM pets ORDER BY random() LIMIT(1)").first
  end
end
