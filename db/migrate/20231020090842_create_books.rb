class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      # foreign key use
      t.belongs_to :author, foreign_key: true
      t.string :title
      t.string :publish

      t.timestamps
    end
  end
end
