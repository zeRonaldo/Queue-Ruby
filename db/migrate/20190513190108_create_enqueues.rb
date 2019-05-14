class CreateEnqueues < ActiveRecord::Migration[5.2]
  def change
    create_table :enqueues do |t|
      t.string :name
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
