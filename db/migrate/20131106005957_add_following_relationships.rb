class AddFollowingRelationships < ActiveRecord::Migration
  def change
  	create_table :following_relationships
  end
end
