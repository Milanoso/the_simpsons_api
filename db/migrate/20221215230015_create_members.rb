class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :name
      t.text :talent
      t.string :hobby
      t.string :image_url

      t.timestamps
    end
  end
end
