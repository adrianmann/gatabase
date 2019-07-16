class PopulateClubsTable < ActiveRecord::Migration
  def change
  	if !Club.all.any?
	  	Rails.application.config.antrim.each do |club|
	  		Club.create!(club: club, county_id: 1)
	  	end

	  	Rails.application.config.armagh.each do |club|
	  		Club.create!(club: club, county_id: 2)
	  	end

	  	Rails.application.config.carlow.each do |club|
	  		Club.create!(club: club, county_id: 3)
	  	end

	  	Rails.application.config.cavan.each do |club|
	  		Club.create!(club: club, county_id: 4)
	  	end

	  	Rails.application.config.clare.each do |club|
	  		Club.create!(club: club, county_id: 5)
	  	end

	  	Rails.application.config.cork.each do |club|
	  		Club.create!(club: club, county_id: 6)
	  	end

	  	Rails.application.config.derry.each do |club|
	  		Club.create!(club: club, county_id: 7)
	  	end

	  	Rails.application.config.donegal.each do |club|
	  		Club.create!(club: club, county_id: 8)
	  	end

	  	Rails.application.config.down.each do |club|
	  		Club.create!(club: club, county_id: 9)
	  	end

	  	Rails.application.config.dublin.each do |club|
	  		Club.create!(club: club, county_id: 10)
	  	end

	  	Rails.application.config.fermanagh.each do |club|
	  		Club.create!(club: club, county_id: 11)
	  	end

	  	Rails.application.config.galway.each do |club|
	  		Club.create!(club: club, county_id: 12)
	  	end

	  	Rails.application.config.kerry.each do |club|
	  		Club.create!(club: club, county_id: 13)
	  	end

	  	Rails.application.config.kildare.each do |club|
	  		Club.create!(club: club, county_id: 14)
	  	end

	  	Rails.application.config.kilkenny.each do |club|
	  		Club.create!(club: club, county_id: 15)
	  	end

	  	Rails.application.config.laois.each do |club|
	  		Club.create!(club: club, county_id: 16)
	  	end

	  	Rails.application.config.leitrim.each do |club|
	  		Club.create!(club: club, county_id: 17)
	  	end

	  	Rails.application.config.limerick.each do |club|
	  		Club.create!(club: club, county_id: 18)
	  	end

	  	Rails.application.config.longford.each do |club|
	  		Club.create!(club: club, county_id: 19)
	  	end

	  	Rails.application.config.louth.each do |club|
	  		Club.create!(club: club, county_id: 20)
	  	end

	  	Rails.application.config.mayo.each do |club|
	  		Club.create!(club: club, county_id: 21)
	  	end

	  	Rails.application.config.meath.each do |club|
	  		Club.create!(club: club, county_id: 22)
	  	end

	  	Rails.application.config.monaghan.each do |club|
	  		Club.create!(club: club, county_id: 23)
	  	end

	  	Rails.application.config.offaly.each do |club|
	  		Club.create!(club: club, county_id: 24)
	  	end

	  	Rails.application.config.roscommon.each do |club|
	  		Club.create!(club: club, county_id: 25)
	  	end

	  	Rails.application.config.sligo.each do |club|
	  		Club.create!(club: club, county_id: 26)
	  	end

	  	Rails.application.config.tipperary.each do |club|
	  		Club.create!(club: club, county_id: 27)
	  	end

	  	Rails.application.config.tyrone.each do |club|
	  		Club.create!(club: club, county_id: 28)
	  	end

	  	Rails.application.config.waterford.each do |club|
	  		Club.create!(club: club, county_id: 29)
	  	end

	  	Rails.application.config.westmeath.each do |club|
	  		Club.create!(club: club, county_id: 30)
	  	end

	  	Rails.application.config.wexford.each do |club|
	  		Club.create!(club: club, county_id: 31)
	  	end

	  	Rails.application.config.wicklow.each do |club|
	  		Club.create!(club: club, county_id: 32)
	  	end
	  end
  end
end
