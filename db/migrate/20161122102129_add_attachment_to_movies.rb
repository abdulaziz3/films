class AddAttachmentToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :attachment, :string
  end
end
