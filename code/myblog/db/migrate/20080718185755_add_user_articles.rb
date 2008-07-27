class AddUserArticles < ActiveRecord::Migration
 
  # Add in the foreign key to create 1-many relationship with user -> articles
  def self.up
    add_column :articles, :user_id, :integer
  end

  def self.down
  end
end
