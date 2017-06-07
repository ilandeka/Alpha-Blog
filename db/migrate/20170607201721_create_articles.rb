class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      # Create new columns in table articles
      t.string :title # create title column which is a string
    end
  end
end
