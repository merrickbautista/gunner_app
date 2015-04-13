class AddIcmToStudent < ActiveRecord::Migration
  def change
    add_column :students, :icm, :integer
  end
end
