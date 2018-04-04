class RemoveCommentFromBooks < ActiveRecord::Migration[5.1]
  def change
    remove_column :books, :comment, :text
  end
end
