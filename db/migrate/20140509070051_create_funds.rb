class CreateFunds < ActiveRecord::Migration
  def change
    create_table :funds do |t|
      t.string :name
      t.date :apr14
      t.date :may14
      t.date :jun14
      t.date :jul14
      t.date :aug14
      t.date :sep14
      t.date :oct14
      t.date :nov14
      t.date :dec14
      t.date :jan15
      t.date :feb15
      t.date :mar15

      t.timestamps
    end
  end
end
