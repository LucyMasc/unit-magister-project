class CreateCertificates < ActiveRecord::Migration[6.0]
  def change
    create_table :certificates do |t|
      t.string :activity_description
      t.integer :hours
      t.boolean :status, default: false, null: false

      t.timestamps
    end
  end
end
