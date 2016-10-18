class CreateBranchManagers < ActiveRecord::Migration
  def change
    create_table :branch_managers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
