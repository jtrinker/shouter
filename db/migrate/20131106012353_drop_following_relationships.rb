class DropFollowingRelationships < ActiveRecord::Migration
  def change
  	drop_table :following_relationships
  end
end
