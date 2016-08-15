class ChangeStoryColumns < ActiveRecord::Migration
  def change
    ActiveRecord::Base.connection.execute("ALTER TABLE stories ADD COLUMN is_moderated_bool BOOLEAN NOT NULL default false")
    ActiveRecord::Base.connection.execute("UPDATE stories SET is_moderated_bool = true WHERE is_moderated = 1")
    remove_column :stories, :is_moderated
    rename_column :stories, :is_moderated_bool, :is_moderated

    ActiveRecord::Base.connection.execute("ALTER TABLE stories ADD COLUMN is_expired_bool BOOLEAN NOT NULL DEFAULT false")
    ActiveRecord::Base.connection.execute("UPDATE stories SET is_expired_bool = true WHERE is_expired = 1")
    remove_column :stories, :is_expired
    rename_column :stories, :is_expired_bool, :is_expired
  end
end
