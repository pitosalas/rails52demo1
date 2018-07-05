class CreateTranslations < ActiveRecord::Migration[5.2]
  def change
    create_table :translations do |t|
      t.text :translation
      t.string :to_lang
      t.references :content, foreign_key: true, dependent: :delete
      t.timestamps
    end
  end
end
