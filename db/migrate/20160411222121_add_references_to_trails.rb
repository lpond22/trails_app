class AddReferencesToTrails < ActiveRecord::Migration
  def change
    add_reference :trails, :park, index: true, foreign_key: true
  end
end
