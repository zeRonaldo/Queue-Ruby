class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :description
      t.belongs_to :enqueue, foreign_key: true

      t.timestamps
    end
  end
end
