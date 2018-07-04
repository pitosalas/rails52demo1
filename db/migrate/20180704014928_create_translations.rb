class CreateTranslations < ActiveRecord::Migration[5.2]
  def change
    create_table :translations do |t|
      t.text :translation
      t.string :to_lang
      t.references :contents
      t.timestamps
    end
  end
end
