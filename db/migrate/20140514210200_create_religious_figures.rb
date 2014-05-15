class CreateReligiousFigures < ActiveRecord::Migration
  def change
    create_table :religious_figures do |t|
    	t.string :name
    	t.boolean :converted_pastafarian
    end
  end
end
