class RenameTypeColumnNameInAds < ActiveRecord::Migration[6.1]
  def change
    rename_column :ads, :type, :department
  end
end
