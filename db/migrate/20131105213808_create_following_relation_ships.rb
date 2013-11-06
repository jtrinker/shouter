class CreateFollowingRelationShips < ActiveRecord::Migration
  def change
    create_table :following_relation_ships do |t|
      t.belongs_to :follower, index: true
      t.belongs_to :followed_user, index: true

      t.timestamps
    end
  end
end
