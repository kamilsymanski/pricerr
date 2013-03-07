class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :subject
      t.integer :price
      t.string :picurl
      t.string :description
      t.string :username
      t.integer :feedback

      t.timestamps
    end
  end
end
