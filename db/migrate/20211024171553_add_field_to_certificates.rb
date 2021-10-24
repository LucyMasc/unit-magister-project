class AddFieldToCertificates < ActiveRecord::Migration[6.0]
  def change
    add_reference :certificates, :user, null: false, foreign_key: true
  end
end
