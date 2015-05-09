class CreateSummoners < ActiveRecord::Migration
  def change
    create_table :summoners do |t|
      t.integer :summoner_id
      t.string :name

      t.timestamps
    end
  end
end
