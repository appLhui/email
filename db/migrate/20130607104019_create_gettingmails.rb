class CreateGettingmails < ActiveRecord::Migration
  def change
    create_table :gettingmails do |t|
      t.string :title
      t.string :details
      t.date :createdate
      t.integer :count

      t.timestamps
    end
  end
end
