class DropFollowingRelationShips < ActiveRecord::Migration
  def change
  	drop_table :following_relation_ships
  end
end
