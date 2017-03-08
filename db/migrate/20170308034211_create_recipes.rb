class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :cook_time
      t.string :nutrition
      t.string :content

      t.timestamps
    end
  end
end
