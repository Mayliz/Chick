class CreateRopas < ActiveRecord::Migration
  def change
    create_table :ropas do |t|
      t.string :nombre
      t.string :tipo
      t.string :picture

      t.timestamps
    end
  end
end
