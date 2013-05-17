class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :english
      t.string :polish

      t.timestamps
    end
  end
end
