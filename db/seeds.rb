# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Vegetable.delete_all

Vegetable.create!(name: 'carrot',
	instructions:
	%{<p>
		Sow thickly out in the soil March to May.  Harvest thinnings at 
		first.  Full grown carrots will be available to pick from
		August onwards.
	</p>},
	description:
	%{<p>
		This umbelliferae is Native to Ireland.  No veg garden is complete 
		without it.  Growing your own carrots is well worth the effort
		because anything you grow will be far superior to any shop bought 
		variety.
	</p>},
	tips:
	%{<p>
		Grows best in a fine soil (no stones).  Try to plant at least 6 
		inches above ground level to make sure the carrot fly can't
		find your carrots.
	</p>},
	image_url: 'carrot.jpg',
	easiness_to_grow_rating: 9)

Vegetable.create!(name: 'cabbage',
	instructions:
	%{<p>
		Sow thickly out in the soil April to May.  Transplant all the 
		best plants to a different bed thinly.  Full grown cabbages will 
		be available to pick from September onwards.
	</p>},
	description:
	%{<p>
		This brassica is Native to Ireland.  Cabbage is a healthy leaf 
		vegetable full of iron and other important vitamins.
	</p>},
	tips:
	%{<p>
		Grows best in a well compacted soil.  Remember to put slug 
		protection around your plants otherwise all of the greenest,
		most succulent leaves will be severely damaged.
	</p>},
	image_url: 'cabbage.JPG',
	easiness_to_grow_rating: 7)
	