class CreateValidades < ActiveRecord::Migration
  def change
    create_table :validades do |t|
      t.date :vencimento
      t.references :user, index: true
      t.references :produto, index: true

      t.timestamps
    end
  end
end
