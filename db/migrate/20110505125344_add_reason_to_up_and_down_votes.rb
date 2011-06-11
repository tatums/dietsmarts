class AddReasonToUpAndDownVotes < ActiveRecord::Migration
  def self.up
    add_column :upvotes, :reason, :text
    add_column :downvotes, :reason, :text
  end

  def self.down
    remove_column :upvotes, :reason, :text 
    remove_column :downvotes, :reason, :text 
  end
end
