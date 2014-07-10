class CreateFunds < ActiveRecord::Migration
  def change
    create_table :funds do |t|
      t.string :name
      t.date :apr
      t.date :may
      t.date :jun
      t.date :jul
      t.date :aug
      t.date :sep
      t.date :oct
      t.date :nov
      t.date :dec
      t.date :jan
      t.date :feb
      t.date :mar
      t.string :email

      t.timestamps
    end
  end
end
