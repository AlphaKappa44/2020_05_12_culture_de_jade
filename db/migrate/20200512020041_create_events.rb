class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.datetime :start_date
      t.integer :duration
      t.string :title
      t.text :description
      t.integer :price
      t.string :location
      
      # ref à model/event.rb => belongs_to :author, class_name: 'User'
      t.references :author, index: true

      t.timestamps
    end
  end
end
