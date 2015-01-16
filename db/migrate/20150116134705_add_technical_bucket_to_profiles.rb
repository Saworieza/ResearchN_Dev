class AddTechnicalBucketToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :technical_bucket, :string
  end
end
