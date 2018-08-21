class CreateFighters < ActiveRecord::Migration[5.2]
  def change
    create_table :fighters do |t|
      t.string :firstname
      t.string :lastname
      t.integer :wins
      t.integer :losses
      t.string :imgSrc

      t.timestamps
    end
  end
end
