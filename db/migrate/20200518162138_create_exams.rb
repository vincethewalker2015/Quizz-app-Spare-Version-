class CreateExams < ActiveRecord::Migration[5.2]
  def change
    create_table :exams do |t|
      t.string :title
      t.string :subject
      t.integer :max_score

      t.timestamps
    end
  end
end
