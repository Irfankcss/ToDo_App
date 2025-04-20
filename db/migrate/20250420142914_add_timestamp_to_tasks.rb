class AddTimestampToTasks < ActiveRecord::Migration[8.0]
  def change
    add_column :tasks, :timestamp, :datetime
    change_column_default :tasks, :timestamp, -> { 'CURRENT_TIMESTAMP' }
  end
end