class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.integer :student_id
      t.integer :quiz_id
      t.decimal :score

      t.timestamps
    end
  end
end
