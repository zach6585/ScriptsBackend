class CreateTexts < ActiveRecord::Migration[6.0]
  def change
    create_table :texts do |t|
      t.string :value 
      t.string :script
      t.string :id_tag
      t.timestamps
    end
  end
end
