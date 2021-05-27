class AddReferencesToBookmark < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookmarks, :list, index: true
    add_foreign_key :bookmarks, :lists

    add_reference :bookmarks, :movie, index: true
    add_foreign_key :bookmarks, :movies
  end
end
