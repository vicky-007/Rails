class AddRefrencesToPost < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :post, references: :posts, index: true
  end
end
