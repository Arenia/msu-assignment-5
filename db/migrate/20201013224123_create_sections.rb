class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.references :course, foreign_key: true
      t.references :professor, foreign_key: true
      t.integer :year
      t.references :semester, foreign_key: true

      t.timestamps
    end
  end
end
