class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :hotlink

      t.timestamps
    end
  end
end
