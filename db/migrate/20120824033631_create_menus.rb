class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :brunch
      t.string :lunch
      t.string :dinner

      t.timestamps
    end
  end
end
