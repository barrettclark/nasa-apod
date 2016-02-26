class CreateNasaMedia < ActiveRecord::Migration
  def change
    create_table :nasa_media do |t|
    	t.date :set_date
    	t.json :payload
      t.timestamps null: false

    end
  end
end
