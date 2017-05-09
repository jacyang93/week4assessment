require_relative "../../config/application.rb"


# this is where you should use an ActiveRecord migration to

class CreateSongs < ActiveRecord::Migration[4.2]
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :songs do |t|
    #  t.references :teacher, foreign_key :true
      t.string :name
      t.string :artist
      t.string :duration

      t.timestamps #created_at & updated_at
    end
  end
end
