class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.references :department, foreign_key: true
      t.integer :number
      t.integer :hours

      t.timestamps
    end
  end
end
