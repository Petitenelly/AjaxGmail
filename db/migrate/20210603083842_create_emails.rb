class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.string :Object
      t.text :Body

      t.timestamps
    end
  end
end
