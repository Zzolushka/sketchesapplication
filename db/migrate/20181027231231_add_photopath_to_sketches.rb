class AddPhotopathToSketches < ActiveRecord::Migration[5.2]
  def change
    add_column :sketches, :photopath, :text
  end
end
