class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.references :user, index: true
      t.string :nome
      t.date :validade
      
      t.timestamps
    end
  end
end
