class AddPinnedToResumes < ActiveRecord::Migration[6.1]
  def change
    add_column :resumes, :pinned ,:boolean
  end
end
