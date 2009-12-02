class CreateVideos < ActiveRecord::Migration
  def self.up
    create_table :videos do |t|
      t.integer :user_id
      t.string :url
      t.string :provider_name
      t.string :provider_id

      t.timestamps
    end
  end

  def self.down
    drop_table :videos
  end
end
