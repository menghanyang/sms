class CreateSends < ActiveRecord::Migration
  def change
    create_table :sends do |t|
      t.text :message
      t.text :telnum
      t.datetime :sendtime

      t.timestamps
    end
  end
end
