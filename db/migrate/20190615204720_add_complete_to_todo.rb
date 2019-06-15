class AddCompleteToTodo < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :complete, :boolean, default:false
  end
end
