class CreateMessaaages < ActiveRecord::Migration[6.0]
  def change
    create_table :messaaages do |t|

      t.timestamps
    end
  end
end
