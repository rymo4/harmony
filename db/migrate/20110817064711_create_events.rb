class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :start
      t.text :body
      t.datetime :end

      t.timestamps
    end
  end
end
