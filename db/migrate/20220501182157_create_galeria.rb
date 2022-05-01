class CreateGaleria < ActiveRecord::Migration[7.0]
  def change
    create_table :galeria do |t|
      t.string :title
      t.text :description
      t.date :data_comemorativa

      t.timestamps
    end
  end
end
