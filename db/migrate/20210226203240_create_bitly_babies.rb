class CreateBitlyBabies < ActiveRecord::Migration[6.0]
  def change
    create_table :bitly_babies do |t|

      t.timestamps
    end
  end
end
