class AddResidenceToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :residence, :string
  end
end
