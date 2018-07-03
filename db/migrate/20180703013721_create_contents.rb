class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.text :original
      t.text :translated
      t.string :from_lang
      t.string :to_lang

      t.timestamps
    end
  end
end
