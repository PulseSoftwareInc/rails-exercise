class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :reviewer, references: :user
      t.references :reviewee, references: :user

      t.timestamps
    end
  end
end
