class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :note
      t.string :image

      t.timestamps
    end
  end
end
