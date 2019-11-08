class AddLocation < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :continent
    end

    change_table(:posts) do |t|
      t.belongs_to "location"
    end
  end
end