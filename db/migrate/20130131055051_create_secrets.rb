class CreateSecrets < ActiveRecord::Migration
  def change
    create_table :secrets do |t|
      t.string :google_client_secret
      t.string :google_client_id

      t.timestamps
    end
  end
end
