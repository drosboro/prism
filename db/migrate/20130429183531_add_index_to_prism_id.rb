class AddIndexToPrismId < ActiveRecord::Migration
  def change
  	add_index :word_markings, :prism_id
  end
end
