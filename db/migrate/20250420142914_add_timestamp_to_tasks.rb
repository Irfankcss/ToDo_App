class AddTimestampToTasks < ActiveRecord::Migration[7.1]
  def change
    add_column :tasks, :timestamp, :datetime
    change_column_default :tasks, :timestamp, -> { 'CURRENT_TIMESTAMP' }
  end
end