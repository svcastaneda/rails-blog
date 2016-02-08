class CreateComments < ActiveRecord::Migration
  def change
    create_table  :comments do |t|
      t.string    :commenter, {null: false}
      t.text      :body, {null: false}
      
      t.references :post, index: true, foreign_key: true
      
      t.timestamps(null: false)
    end
  end
end
