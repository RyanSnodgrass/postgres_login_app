class AddDefaultToFigure < ActiveRecord::Migration
  def change
  	change_column :figures, :converted_pastafarian, :boolean, :default => false
  end
end
