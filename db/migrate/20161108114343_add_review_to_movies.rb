class AddReviewToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :attach, :string
  end
end
