# seeds the database with the 4 figures

Figure.delete_all
Figure.create(:name=>'Jesus Christ')
Figure.create(:name=>'Muhammed')
Figure.create(:name=>'Buddha')
Figure.create(:name=>'Tim Tebow')