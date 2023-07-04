class RemoveComentFromBookComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :book_comments, :coment, :text
  end
end
