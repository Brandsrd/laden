class CreateAanbieders < ActiveRecord::Migration
  def change
    create_table :aanbieders do |t|
      t.string :naam
      t.string :automerk
      t.string :stroom
      t.integer :prijs

      t.timestamps null: false
    end
  end
end
