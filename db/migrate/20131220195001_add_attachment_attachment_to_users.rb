class AddAttachmentAttachmentToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :attachment
    end
  end

  def self.down
    drop_attached_file :users, :attachment
  end
end
