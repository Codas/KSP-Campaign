class CreateReputations < ActiveRecord::Migration
  def change
    create_table :reputations do |t|
      t.integer :institution_id
      t.integer :campaign_id
      t.integer :contract_id
      t.integer :change

      t.timestamps
    end
  end
end
