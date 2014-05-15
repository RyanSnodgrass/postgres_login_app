class RenameReligiousFiguresToFigures < ActiveRecord::Migration
  def change
  	rename_table :religious_figures, :figures
  end
end
