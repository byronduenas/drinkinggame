class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :kind

      t.timestamps null: false
    end
  end
end
