class AddPaxToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :pax, :integer, default: 1
  end
end
