class CreateAnagrams < ActiveRecord::Migration
  def change
    create_table :anagrams do |t|
      t.string :word1
      t.string :word2

      t.timestamps null: false
    end
  end
end
