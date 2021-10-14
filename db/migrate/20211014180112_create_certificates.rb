class CreateCertificates < ActiveRecord::Migration[6.0]
  def change
    create_table :certificates do |t|
      t.string :type
      t.integer :hours
      t.boolean :status

      t.timestamps
    end
  end
end
