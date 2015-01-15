class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.integer :year
      t.belongs_to :season

      t.timestamps
    end
  end
end
