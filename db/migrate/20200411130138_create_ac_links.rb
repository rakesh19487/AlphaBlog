class CreateAcLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :ac_links do |t|
      t.integer :article_id
      t.integer :category_id
      t.timestamps
    end
  end
end
