class CreateAssociatedWithIts < ActiveRecord::Migration
  def change
    create_table :associated_with_its do |t|

      t.timestamps null: false
    end
  end
end
