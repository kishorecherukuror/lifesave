class CreateBgroups < ActiveRecord::Migration
  def change
    create_table :bgroups do |t|
      t.integer :a_positive
      t.integer :b_positive
      t.integer :o_positive
      t.integer :ab_positive
      t.integer :a_negative
      t.integer :b_negative
      t.integer :o_negative
      t.integer :ab_negative
      t.references :center, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
