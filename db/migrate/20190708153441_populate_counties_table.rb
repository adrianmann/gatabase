class PopulateCountiesTable < ActiveRecord::Migration
  def change
  	if !County.all.any?
	  	Rails.application.config.counties.each do |county|
	  		County.create!(name: county)
	  	end
	  end
  end
end
