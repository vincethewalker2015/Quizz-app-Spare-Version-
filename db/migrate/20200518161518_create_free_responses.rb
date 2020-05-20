class CreateFreeResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :free_responses do |t|
      t.integer :student_id
      t.integer :question_id

      t.timestamps
    end
  end
end
