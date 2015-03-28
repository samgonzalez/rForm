class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.string :dov
      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
