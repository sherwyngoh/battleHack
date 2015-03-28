class AddDatesToMemorial < ActiveRecord::Migration
  def change
    add_column :memorials, :wake_end_date, :datetime
    add_column :memorials, :funeral_end_date, :datetime
  end
end
