class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.boolean :free_response
      t.integer :max_score
      t.integer :quiz_id

      t.timestamps
    end
  end
end
