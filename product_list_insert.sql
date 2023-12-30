SELECT TOP (1000) [PRODUCTID]
      ,[PRODUCTNAME]
      ,[PRICE]
      ,[QUANTITY]
      ,[CATEID]
      ,[IMAGE]
      ,[DATECREATE]
      ,[AUTHOR]
  FROM [DuAnTotNghiep].[dbo].[PRODUCT]

  select*from PRODUCT
  where CATEID = 'WatM'

  delete from PRODUCT
  where CATEID = 'BedR'


SET IDENTITY_INSERT Product on
insert into PRODUCT ([PRODUCTID]
      ,[PRODUCTNAME]
      ,[PRICE]
      ,[QUANTITY]
      ,[CATEID]
      ,[IMAGE]
      ,[DATECREATE]
      ,[AUTHOR] )

 


 values

   --Art on wood

		(90256,'The tower of London',1099000,10,'WooA','WooA_the-tower-of-london_Joseph-Mallord-William-Turner.jpg', 12-12-2023,'William Turner'),
		(90257,'The Pont des arts Paris 1867',1209000,10,'WooA','WooA_the-pont-des-arts-paris-1867_auguste-renoir.jpg', 12-12-2023,'Auguste Renoir'),

		(90258,'The old Mill',909000,10,'WooA','WooA_the-old-mill_jasper-francis-cropsey.jpg', 12-12-2023,'Jasper Francis Cropsey'),
		(90259,'The arno in florence 1740',209000,10,'WooA','WooA_the-arno-in-florence-1740_Bernardo-bellotto.jpg', 12-12-2023,'Bernardo Bellotto'),

		(90260,'Monet painting in his garden at argenteuil I 1873',259000,10,'WooA','WooA_monet-painting-in-his-garden-at-argenteuil-i-1873_claude-monet.jpg', 12-12-2023,'Claude Monet'),
		(90261,'Jebel Cherib 1885 Wood Print',459000,10,'WooA','WooA_Jebel-Cherib-1885-Wood-Print_Eugene-Von-Guerard.jpg', 12-12-2023,'Eugene Von Guerard'),

		(90262,'Grand Canal Venice',109000,10,'WooA','WooA_grand-canal-venice_thomas-moran.jpg', 12-12-2023,'Thomas Moran'),
		(90253,'Farmhouses Among trees 1883',109000,10,'WooA','WooA_farmhouses-among-trees-1883_vincent-van-gogh.jpg', 12-12-2023,'Vincent Van Gogh'),

		(90254,'Farmhouse with two figures 1890',109000,10,'WooA','WooA_farmhouse-with-two-figures-1890_vincent-van-gogh.jpg', 12-12-2023,'Vincent Van Gogh'),
		(90255,'Along The Shore Wood',109000,10,'WooA','WooA_Along-The-Shore-Wood-Print_William-Trost-Richards.jpg', 12-12-2023,'William Trost Richards')

 --Watercolor Masterpieces

		(90246,'Valley Of The Babbling Waters',1099000,10,'WatM','WatM_Valley-Of-The-Babbling-Waters_Thomas-Moran.jpg', 12-12-2023,'Thomas Moran'),
		(90247,'Sloop Nassau',1209000,10,'WatM','WatM_Sloop-Nassau_Winslow-Homer.jpg', 12-12-2023,'Winslow Homer'),

		(90248,'Piazza San Marco',909000,10,'WatM','WatM_Piazza-San-Marco_Antonio-Guidotti.jpg', 12-12-2023,'Antonio Guidotti'),
		(90249,'Lake Geneva',209000,10,'WatM','WatM_Lake-Geneva_Joseph-Mallord-William-Turner.jpg', 12-12-2023,'William Turner'),

		(90250,'Gondoliers Siesta',259000,10,'WatM','WatM_Gondoliers-Siesta_John-Singer-Sargent.jpg', 12-12-2023,'John Singer Sargent'),
		(90251,'Flower Garden And Bungalow Bermuda',459000,10,'WatM','WatM_Flower-Garden-And-Bungalow-Bermuda_Winslow-Homer.jpg', 12-12-2023,'Winslow Homer'),

		(90252,'Cathedral of Llandaff',109000,10,'WatM','WatM_Cathedral-of-Llandaff_Paul-Sandby.jpg', 12-12-2023,'Paul Sandby'),
		(90243,'Boys In A Dory',109000,10,'WatM','WatM_Boys-In-A-Dory_Winslow-Homer.jpg', 12-12-2023,'Winslow Homer'),

		(90244,'Boy Fishing',109000,10,'WatM','WatM_Boy-Fishing_Jennifer-Heyd-Wharton-after_Winslow-Homer.jpg', 12-12-2023,'Winslow-Homer'),
		(90245,'Bather',109000,10,'WatM','WatM_Bather_Winslow-Homer.jpg', 12-12-2023,'Winslow Homer')

 --Vietnameses Artists

   		(90236,'Village production team',1099000,10,'VieA','VieA_Village-production-team_HoangTichChu.jpg', 12-12-2023,'Hoang Tich Chu'),
		(90237,'Uncle Ho in the Viet Bac War Zone',1209000,10,'VieA','VieA_Uncle-Ho-in-the-Viet-Bac-War-Zone_DuongBichLien.jpg', 12-12-2023,'Duong Bich Lien'),

		(90238,'The Union Meeting',909000,10,'VieA','VieA_The-Union-Meeting_HuynhVanGam.jpg', 12-12-2023,'Huynh Van Gam'),
		(90239,'Summer wind',209000,10,'VieA','VieA_Summer-wind_PhamHau.jpg', 12-12-2023,'Pham Hau'),

		(90240,'Standing Screen',259000,10,'VieA','VieA_Standing-Screen_NguyenGiaTri.jpg', 12-12-2023,'Nguyen Gia Tri'),
		(90241,'Spring in the Hoan Kiem Lake',459000,10,'VieA','VieA_Spring-in-the-Hoan-Kiem-Lake_NguyenTuNghiem.jpg', 12-12-2023,'Nguyen Tu Nghiem'),

		(90242,'Remembering the Northwest',109000,10,'VieA','VieA_Remembering-the-Northwest_PhanKeAn.jpg', 12-12-2023,'Phan Ke An'),
		(90235,'Party Admission Ceremony on the Dien Bien Phu Battlefield',109000,10,'VieA','VieA_Party-Admission-Ceremony-on-the-Dien-Bien-Phu-Battlefield_NguyenSang.jpg', 12-12-2023,'Nguyen Sang'),

		(90234,'Bailing water from the rice field',109000,10,'VieA','VieA_Bailing-water-from-the-rice-field_TranVanCan.jpg', 12-12-2023,'Tran Van Can')

 --Portrait Painting

  		(90226,'Vincent van Gogh painting sunflowers',1099000,10,'PorP','PorP_Vincent-van-Gogh-painting-sunflowers_Paul-Gauguin.jpg', 12-12-2023,'Paul Gauguin'),
		(90227,'Self Portraitwith a Portraitonan Easel',1209000,10,'PorP','PorP_Self-Portraitwith-a-Portraitonan-Easel_Nicolas-Regnier.jpg', 12-12-2023,'Nicolas Regnier'),

		(90228,'Saint Matthewand the Angel',909000,10,'PorP','PorP_Saint-Matthewand-the-Angel_Nicolas-Régnier.jpg', 12-12-2023,'Nicolas Régnier'),
		(90229,'Mr and Mrs Andrews',209000,10,'PorP','PorP_Mr-and-Mrs-Andrews_Thomas-Gainsborough.jpg', 12-12-2023,'Thomas Gainsborough'),

		(90230,'Madame Récamier',259000,10,'PorP','PorP_Madame-Récamier_Jacques-Louis-David.jpg', 12-12-2023,'Jacques Louis David'),
		(90231,'Louis XIV of France and his family portrayed as Roman gods in a 1670',459000,10,'PorP','PorP_Louis-XIV-of-France-and-his-family-portrayed-as-Roman-gods-in-a-1670_Jean-Nocrect.jpg', 12-12-2023,'Jean Nocrect'),

		(90232,'His Renie',109000,10,'PorP','PorP_His-Renie_Nicolas-Régnier.jpg', 12-12-2023,'Nicolas Régnier'),
		(90233,'Family of Pieter Jan Foppesz',109000,10,'PorP','PorP_Family-of-Pieter-Jan-Foppesz_Marten-van-Heemskerck.jpg', 12-12-2023,'Marten van Heemskerck'),

		(90224,'Carnival Scene',109000,10,'PorP','PorP_Carnival-Scene_Nicolas-Régnier.jpg', 12-12-2023,'Nicolas Régnier'),
		(90225,'Banquet of the Officers of the Calivermen Civic,Haarlem',109000,10,'PorP','PorP_Banquet-of-the-Officers-of-the-Calivermen-Civic,Haarlem_FransHals.jpg', 12-12-2023,'FransHals')



 --Photorealistics Art

 		(90216,'Telephone Booths',1099000,10,'PhoA','PhoA_Telephone-Booths_Richard-Estes.jpg', 12-12-2023,'Richard Estes'),
		(90217,'White Chevy Red Trailer',1209000,10,'PhoA','PhoA_White-Chevy-Red-Trailer_John-Salt.jpg', 12-12-2023,'John Salt'),

		(90218,'Sacramento airport',909000,10,'PhoA','PhoA_Sacramento-airport_Ralph-Goings.jpg', 12-12-2023,'Ralph Goings'),
		(90219,'Johns Diner',209000,10,'PhoA','PhoA_Johns-Diner_John-Baeder.jpg', 12-12-2023,'John Baeder'),

		(90220,'Tillichs Mirror Rembrandts Three Trees TransformedIn to The Expulsion From Eden',259000,10,'PhoA','PhoA_Hannah-Tillichs-Mirror-Rembrandts-Three-Trees-TransformedIn-to-The-Expulsion-From-Eden_Ian-Hornak.jpg', 12-12-2023,'Ian Hornak'),
		(90221,'Dream of Love',459000,10,'PhoA','PhoA_Dream-of-Love_Glennray-Tutor.jpg', 12-12-2023,'Glennray Tutor'),

		(90222,'Chanel',109000,10,'PhoA','PhoA_Chanel_Audrey-Flack.jpg', 12-12-2023,'Audrey Flack'),
		(90223,'Banana Split Sundae',109000,10,'PhoA','PhoA_Banana-Split-Sundae_Audery-Flack.jpg', 12-12-2023,'Audery Flack'),

		(90214,'61 Pontiac',109000,10,'PhoA','PhoA_61-Pontiac_Robert-Bechtle.jpg', 12-12-2023,'Robert Bechtle'),
		(90215,'Ralphs Dinner',109000,10,'PhoA','PhoA_Ralphs-Dinner_Ralph-Goings.jpg', 12-12-2023,'Ralph Goings')

 --Oil Paintings

 		(90206,'Mist on the wolds',1099000,10,'OilP','OilP_Mist-on-the-wolds_Malcolm-Ludvigen.jpg', 12-12-2023,'Malcolm Ludvigen'),
		(90207,'Sun follower',1209000,10,'OilP','OilP_Sun-follower_Melinda-Matyas.jpg', 12-12-2023,'Melinda Matyas'),

		(90208,'Portsea',909000,10,'OilP','OilP_Portsea_Liliana-Gigovic.jpg', 12-12-2023,'Liliana Gigovic'),
		(90209,'Mountain top',209000,10,'OilP','OilP_Mountain-top_Yanina-Eberhard.jpg', 12-12-2023,'Yanina Eberhard'),

		(90210,'Portrait of a goat with a jingle bell',259000,10,'OilP','OilP_Portrait-of-a-goat-with-a-jingle-bell_Igor-Shulman.jpg', 12-12-2023,'Igor Shulman'),
		(90211,'King cat',459000,10,'OilP','OilP_King-cat_Laura-Muolo.jpg', 12-12-2023,'Laura Muolo'),

		(90212,'Landscape from Tuscany',109000,10,'OilP','OilP_Landscape-from-Tuscany_Maja-Đokíc-Mihajovíc.jpg', 12-12-2023,'Maja Đokíc Mihajovíc'),
		(90213,'Emotional Landscape',109000,10,'OilP','OilP_Emotional-Landscape_Behshad-Arjomandi.jpg', 12-12-2023,'Behshad Arjomandi'),

		(90204,'Sunrise on sea',109000,10,'OilP','OilP_Sunrise-on-sea_Andrej-Ostapchuk.jpg', 12-12-2023,'Andrej Ostapchuk'),
		(90205,'Still life with cherries',109000,10,'OilP','OilP_Still-life-with-cherries_Valeri-Tsvetkov.jpg', 12-12-2023,'Valeri Tsvetkov')

 --Modern Paintings

		(90196,'Blacks girls',1099000,10,'ModP','ModP_Blacks-girls_Lydie-Foliot.jpg', 12-12-2023,'Lydie Foliot'),
		(90197,'Marilyn',1209000,10,'ModP','ModP_Marilyn_Bernard-Pras.jpg', 12-12-2023,'Bernard Pras'),

		(90198,'Love me',909000,10,'ModP','ModP_Love-me_Raphael-van-der-Haegen.jpg', 12-12-2023,'Raphael van Der Haegen'),
		(90199,'Mediate',209000,10,'ModP','ModP_Mediate_Oluwafemi-Akanmu.jpg', 12-12-2023,'Oluwafemi Akanmu'),

		(90200,'Prized Possessions',259000,10,'ModP','ModP_Prized-Possessions_Thandiwe-Muriu.jpg', 12-12-2023,'Thandiwe Muriu'),
		(90201,'Ma vie a lenvers',459000,10,'ModP','ModP_Ma-vie-a-lenvers_Babeth-Puech.jpg', 12-12-2023,'Babeth Puech'),

		(90202,'A sunday on La Grande Jatte',109000,10,'ModP','ModP_A-sunday-on-La-Grande-Jatte_Gertges-Seurat.jpg', 12-12-2023,'Gertges Seurat'),
		(90203,'Marilyn',109000,10,'ModP','ModP_Marilyn_Andy-Warhol.jpg', 12-12-2023,'Andy Warhol'),

		(90194,'Circles in Circle',109000,10,'ModP','ModP_Circles-in-Circle_Wassily-Kandinsky.jpg', 12-12-2023,'Wassily Kandinsky'),
		(90195,'Going to work',109000,10,'ModP','ModP_Going-to-work_L.S.-Lowry.jpg', 12-12-2023,'L.S. Lowry')

 --Love and Peace Paintings

		(90187,'Beautiful peace',1209000,10,'LoPP','LoPP_Beautiful-peace_Sohan.jpg', 12-12-2023,'Sohan'),

		(90188,'One love',909000,10,'LoPP','LoPP_One-love_Sohan.jpg', 12-12-2023,'Sohan'),
		(90189,'Love and Piece',209000,10,'LoPP','LoPP_Love-and-Piece_Yasna-Godovanik.jpg', 12-12-2023,'Yasna Godovanik'),

		(90190,'Love and Sunshine',259000,10,'LoPP','LoPP_Love-and-Sunshine_Becky-Lucas.jpg', 12-12-2023,'Becky Lucas'),
		(90191,'Buddha Mediation',459000,10,'LoPP','LoPP_Buddha-Mediation_Jane-small.jpg', 12-12-2023,'Jane Small'),

		(90192,'A future and a Hope',109000,10,'LoPP','LoPP_A-future-and-a-Hope_Michele-Davis.jpg', 12-12-2023,'Michele Davis'),
		(90193,'Watching the Wheels',109000,10,'LoPP','LoPP_Watching-the-Wheels_Paul-Lovering.jpg', 12-12-2023,'Paul Lovering')

 --Art for Living Room

		(90178,'Autumn in London',909000,10,'LivR','LivR_Autumn-in-London_Becky-Lucas.jpg', 12-12-2023,'Becky Lucas'),
		(90179,'Paris in the spring',209000,10,'LivR','LivR_Paris-in-the-spring_Becky-Lucas.jpg', 12-12-2023,'Becky Lucas'),

		(90180,'Four Seasons tree',259000,10,'LivR','LivR_Four-Seasons-tree_Becky-Lucas.jpg', 12-12-2023,'Becky Lucas'),
		(90181,'Magical Manarola',459000,10,'LivR','LivR_Magical-Manarola_Becky-Lucas.jpg', 12-12-2023,'Becky Lucas'),

		(90182,'Silver screen Tuscany',109000,10,'LivR','LivR_Silver-screen-Tuscany_Becky-Lucas.jpg', 12-12-2023,'Becky Lucas'),
		(90183,'Fishing boat at sunrise',109000,10,'LivR','LivR_Fishing-boat-at-sunrise_Becky-Lucas.jpg', 12-12-2023,'Becky Lucas'),

		(90184,'Vespa at the door',109000,10,'LivR','LivR_Vespa-at-the-door_Becky-Lucas.jpg', 12-12-2023,'Becky Lucas'),
		(90185,'Wild poppies',109000,10,'LivR','LivR_Wild-poppies_Becky-Lucas.jpg', 12-12-2023,'Becky Lucas'),

		(90186,'Forever flourish',1099000,10,'LivR','LivR_Forever-flourish_Becky-Lucas.jpg', 12-12-2023,'Becky Lucas')

 --Art for Kitchen

        (90176,'Time for coffee',1099000,10,'KitC','KitC_Time-for-coffee_Sohan.jpg', 12-12-2023,'Sohan'),
		(90177,'Full family',1209000,10,'KitC','KitC_Full-family_Sohan.jpg', 12-12-2023,'Sohan'),

		(90168,'Summer cocktails',909000,10,'KitC','KitC_Summer-cocktails_Sohan.jpg', 12-12-2023,'Sohan'),
		(90169,'Spoons of spice',209000,10,'KitC','KitC_Spoons-of-spice_Sohan.jpg', 12-12-2023,'Sohan'),

		(90170,'Coffee with Andy',259000,10,'KitC','KitC_Coffee-with-Andy_Sohan.jpg', 12-12-2023,'Sohan'),
		(90171,'Coffee hit',459000,10,'KitC','KitC_Coffee-hit_Sohan.jpg', 12-12-2023,'Sohan'),

		(90172,'Spice it up',109000,10,'KitC','KitC_Spice-it-up_Sohan.jpg', 12-12-2023,'Sohan'),
		(90173,'Take your pit',109000,10,'KitC','KitC_Take-your-pit_Sohan.jpg', 12-12-2023,'Sohan'),

		(90174,'Figgy flowers',109000,10,'KitC','KitC_Figgy-flowers_Sohan.jpg', 12-12-2023,'Sohan'),
		(90175,'Bon Appetit',109000,10,'KitC','KitC_Bon-Appetit_Sohan.jpg', 12-12-2023,'Sohan')

 --Historical Depictions

 		(90162,'Anguish',1099000,10,'HisD','HisD_Anguish_August-Friedrich-Albrecht-Schenck.jpg', 12-12-2023,'August Friedrich Albrecht Schenck'),
		(90163,'Dante and Virgile',1209000,10,'HisD','HisD_Dante-and-Virgile_William-Bouguereau.jpg', 12-12-2023,'William Bouguereau'),

		(90164,'Inferno',909000,10,'HisD','HisD_Inferno_Herri-met-de-Bles.jpg', 12-12-2023,'Herri met de Bles'),
		(90165,'Old mans Death',209000,10,'HisD','HisD_Old-mans-Death_Líszl-Mednyínszky.jpg', 12-12-2023,'Líszl Mednyínszky'),

		(90166,'Old mans Death',259000,10,'HisD','HisD_Old-mans-Death_László-Mednyánszky.jpg', 12-12-2023,'László Mednyánszky'),
		(90167,'Laughing Fool',459000,10,'HisD','HisD_Laughing-Fool_Jacob-Cornelisz-Van-Oostsanen.jpg', 12-12-2023,'Jacob Cornelisz Van Oostsanen')

 --Highly Rated Artworks

        (90156,'The kiss',1099000,10,'HiRA','HiRA_The-kiss_Gustav-Klimt.jpg', 12-12-2023,'Gustav Klimt'),
		(90157,'The birth of Venus',1209000,10,'HiRA','HiRA_The-birth-of-Venus_Sandro-Botticelli.jpg', 12-12-2023,'Sandro Botticelli'),

		(90158,'Arrangement in Grey and Black No.1',909000,10,'HiRA','HiRA_Arrangement-in-Grey-and-Black-No.1_James-Abbott-McNeill-Whistler.jpg', 12-12-2023,'James Abbott McNeill Whistler'),
		(90159,'The Arnolfini Portrait',209000,10,'HiRA','HiRA_The-Arnolfini-Portrait_Jan-van-Eyck.jpg', 12-12-2023,'Jan van Eyck'),

		(90160,'The Garden of Earthly Delights',259000,10,'HiRA','HiRA_The-Garden-of-Earthly-Delights_Hieronymus-Bosch.jpg', 12-12-2023,'Hieronymus Bosch'),
		(90161,'Les Demoiselles dAvinon',459000,10,'HiRA','HiRA_Les-Demoiselles-dAvinon_Pablo-Picasso.jpg', 12-12-2023,'Pablo Picasso'),

		(90152,'A Sunday Afternoon on the Island of La Grande Jatte',109000,10,'HiRA','HiRA_A-Sunday-Afternoon-on-the-Island-of-La-Grande-Jatte_Georges-Seurat.jpg', 12-12-2023,'Georges Seurat'),
		(90153,'The Starry Night',109000,10,'HiRA','HiRA_The-Starry-Night_Vincent-van-Gouh.jpg', 12-12-2023,'Vincent van Gogh'),

		(90154,'Girl with a Pearl Earring',109000,10,'HiRA','HiRA_Girl-with-a-Pearl-Earring_Johannes-Vermeer.jpg', 12-12-2023,'Johannes Vermeer'),
		(90155,'Mona Lisa',109000,10,'HiRA','HiRA_Mona-Lisa_Leonardo-Da-Vinci.jpg', 12-12-2023,'Leonardo Da Vinci')

 --Featured Art Collections

		(90146,'Mountains in the Sea',1099000,10,'FeAC','FeAC_Mountains-in-the-Sea_Duong-Viet-Nam.jpg', 12-12-2023,'Duong Viet Nam'),
		(90147,'Valley feature',1209000,10,'FeAC','FeAC_Valley-feature_Gregg-Simpson.jpg', 12-12-2023,'Gregg Simpson'),

		(90148,'Dont Explain',909000,10,'FeAC','FeAC_dont-explain_mark-ashkenazi.jpg', 12-12-2023,'Mark Ashkenazi'),
		(90149,'Metamorphosis',209000,10,'FeAC','FeAC_metamorphosis_mia-tavonatti.jpg', 12-12-2023,'Mia Tavonatti'),

		(90150,'Napa Valley Vineyards',259000,10,'FeAC','FeAC_napa-valley-vineyards_david-lloyd-glover.jpg', 12-12-2023,'David Lloyd Glover'),
		(90151,'American Buffalo III',459000,10,'FeAC','FeAC_american-buffalo-iii_hailey-e-herrera.jpg', 12-12-2023,'Hailey E.Herrera')

 --Fantasy Paintings

       	(90136,'Unicon',1099000,10,'FanP','FanP_Unicon_Nosan.jpg', 12-12-2023,'Nosan'),
		(90137,'Gateway to Escape-Room',1209000,10,'FanP','FanP_Gateway-to-Escape-Room_Zuzana-Uhlikoví.jpg', 12-12-2023,'Zuzana Uhlikoví'),

		(90138,'La Belle Dame Sans Merci',909000,10,'FanP','FanP_la-belle-dame-sans-merci_sir-frank-dicksee.jpg', 12-12-2023,'Sir Frank Dicksee'),
		(90139,'Elephant Chess',209000,10,'FanP','FanP_elephant-chess_ethiriel.jpg', 12-12-2023,'Ethiriel'),

		(90140,'The Defiant',259000,10,'FanP','FanP_the-defiant_david-willicome.jpg', 12-12-2023,'David Willicome'),
		(90141,'Elf XV',459000,10,'FanP','FanP_elf-xv_kory-fluckiger.jpg', 12-12-2023,'Kory Fluckiger'),

		(90142,'Surprise',109000,10,'FanP','FanP_surprise_leonard-filgate.jpg', 12-12-2023,'Leonard Filgate'),
		(90143,'Coffee Dragon',109000,10,'FanP','FanP_coffee-dragon_stanley-morrison.jpg', 12-12-2023,'Stanley Morrison'),

		(90144,'Be love',109000,10,'FanP','FanP_Be-love_Nosan.jpg', 12-12-2023,'Nosan'),
		(90145,'New world',109000,10,'FanP','FanP_New-world_Nosan.jpg', 12-12-2023,'Nosan')


 --Digital Art Paintings

      	(90126,'The Banana',1099000,10,'DiAP','DiAP_The-Banana_Pawel-Nolbert.jpg', 12-12-2023,'Pawel Nolbert'),
		(90127,'Digital Corki',1209000,10,'DiAP','DiAP_Digital-Corki_Lynn-Chen.jpg', 12-12-2023,'Lynn Chen'),

		(90128,'Views and Landscape',909000,10,'DiAP','DiAP_Views-and-Landscape_Yaroslava-Yatsuba.jpg', 12-12-2023,'Yaroslava Yatsuba'),
		(90129,'Emotional Landscape',209000,10,'DiAP','DiAP_Emotional-Landscape_Behshad-Arjomandi.jpg', 12-12-2023,'Behshad Arjomandi'),

		(90130,'Matea',259000,10,'DiAP','DiAP_Matea_Sanja-Jancic.jpg', 12-12-2023,'Sanja Jancic'),
		(90131,'Virtual Plein Air',459000,10,'DiAP','DiAP_Virtual-Plein-Air_Madeleine-Bellwoar.jpg', 12-12-2023,'Madeleine Bellwoar'),

		(90132,'Silence horse',109000,10,'DiAP','DiAP_Silence-horse_Uwe-Fehmann.jpg', 12-12-2023,'Uwe Fehmann'),
		(90133,'Digital drawing',109000,10,'DiAP','DiAP_Digital-drawing_Jan-Jee-Johnson.jpg', 12-12-2023,'Jan Jee Johnson'),

		(90134,'The travel',109000,10,'DiAP','DiAP_The-travel_Charlie-Davis.jpg', 12-12-2023,'Charlie Davis'),
		(90135,'Mochi the Corgi',109000,10,'DiAP','DiAP_Mochi-the-Corgi_Lynn-Chen.jpg', 12-12-2023,'Lynn Chen')



 -- Emerging Talents Artworks

     	(90116,'Passage 2',1099000,10,'EmTA','EmTA_Passage-2_Ivan-Tzonev.jpg', 12-12-2023,'Ivan Tzonev'),
		(90117,'Canicule N1',1209000,10,'EmTA','EmTA_Canicule-N1_Ivan-Tzonev.jpg', 12-12-2023,'Ivan Tzonev'),

		(90118,'Volkswagen 1951',909000,10,'EmTA','EmTA_Volkswagen-1951_Ziegler-T.jpg', 12-12-2023,'Ziegler T'),
		(90119,'Une vie par Simone Veil',209000,10,'EmTA','EmTA_Une-vie-par-Simone-Veil_C215.jpg', 12-12-2023,'C215'),

		(90120,'Enfant',259000,10,'EmTA','EmTA_Enfant_C215.jpg', 12-12-2023,'C215'),
		(90121,'Bouquest Passion',459000,10,'EmTA','EmTA_Bouquest-Passion_Shelby.jpg', 12-12-2023,'Shelby'),

		(90122,'Balade bleu blanx',109000,10,'EmTA','EmTA_Balade-bleu-blanx_Shelby.jpg', 12-12-2023,'Shelby'),
		(90123,'Diffraction III',109000,10,'EmTA','EmTA_Diffraction-III_Maude-Ovize.jpg', 12-12-2023,'Maude Ovize'),

		(90124,'Portée par les eaux',109000,10,'EmTA','EmTA_Portée-par-les-eaux_Maude-Ovize.jpg', 12-12-2023,'Maude Ovize'),
		(90125,'Diffraction II',109000,10,'EmTA','EmTA_Diffraction-II_Maude-Ovize.jpg', 12-12-2023,'Maude Ovize')

 -- Contemporary Traditional Paintings

    	(90105,'Captain Pirate',1099000,10,'CoTP','CoTP_Captain-Pirate_Patiala.jpg', 12-12-2023,'Patiala'),
		(90106,'Do not leave me',1209000,10,'CoTP','CoTP_do-not-leave-me_albena-vatcheva.jpg', 12-12-2023,'Albena Vatcheva'),

		(90107,'Midnight Sagebrush',909000,10,'CoTP','CoTP_Midnight-Sagebrush_Johnathan-Harris.jpg', 12-12-2023,'Johnathan Harris'),
		(90108,'The forest Song',209000,10,'CoTP','CoTP_The-forest-Song_Yuliia-Chaika.jpg', 12-12-2023,'Yuliia Chaika'),

		(90109,'Frankness',259000,10,'CoTP','CoTP_Frankness_Yuliia-Chaika.jpg', 12-12-2023,'Yuliia Chaika'),
		(90110,'At the Crossroads',459000,10,'CoTP','CoTP_At-the-Crossroads_Yuliia-Chaika.jpg', 12-12-2023,'Yuliia Chaika'),

		(90111,'Into Taihu',109000,10,'CoTP','CoTP_Into-Taihu_Liu-Xiadong.jpg', 12-12-2023,'Liu Xiadong'),
		(90112,'The cry',109000,10,'CoTP','CoTP_the-cry_Luc-Tuymans.jpg', 12-12-2023,'Luc Tuymans'),

		(90113,'Mahanadi',109000,10,'CoTP','CoTP_Mahanadi_Pune-Mohan-Jadhav.jpg', 12-12-2023,'Pune Mohan Jadhav'),
		(90114,'The Roofs in the Moonlight',109000,10,'CoTP','CoTP_The-Roofs-in-the-Moonlight_Mikeda-Bizuneh.jpg', 12-12-2023,'Mikeda Bizuneh'),

		(90115,'Theories of Personality',109000,10,'CoTP','CoTP_Theories-of-Personality_Svetlana-Shalygina.jpg', 12-12-2023,'Svetlana Shalygina')


 --Collection of Famous Artists

   		(90104,'House in the field',1099000,10,'CoFA','CoFA_house-in-the-field_Picaso.jpg', 12-12-2023,'Pablo Picasso'),
		(90096,'Cat Catching a Bird',1209000,10,'CoFA','CoFA_cat-catching-a-bird_Picaso.jpg', 12-12-2023,'Pablo Picasso'),

		(90097,'Figures at the seaside',909000,10,'CoFA','CoFA_figures-at-the-seaside_Picaso.jpg', 12-12-2023,'Pablo Picasso'),
		(90098,'Landscape with house and ploughman',209000,10,'CoFA','CoFA_landscape-with-house-and-ploughman_Van-gogh.jpg', 12-12-2023,'Vincent van Gogh'),

		(90099,'The potato eaters',259000,10,'CoFA','CoFA_the-potato-eaters_Van-gouh.jpg', 12-12-2023,'Vincent van Gogh'),
		(90100,'The starry night',459000,10,'CoFA','CoFA_the-starry-night_Van-gouh.jpg', 12-12-2023,'Vincent van Gogh'),

		(90101,'Last Supper',109000,10,'CoFA','CoFA_Last-Supper_Leonardo-da.jpg', 12-12-2023,'Leonardo da Vinci'),
		(90102,'Head Woman',109000,10,'CoFA','CoFA_Head-Woman_Leonardo.jpg', 12-12-2023,'Leonardo da Vinci'),

		(90103,'Mona Lisa',109000,10,'CoFA','CoFA_Mona-Lisa_Leonardo-da.jpg', 12-12-2023,'Leonardo da Vinci')

 --Art on Glass

  		(90086,'S.H.E',1099000,10,'ClaA','ClaA_S.H.E_Kyle-Orlando.jpg', 12-12-2023,'Kyle Orlando'),
		(90087,'Family of Penguin',1209000,10,'ClaA','ClaA_Family-of-Penguin_Kyle-Orlando.jpg', 12-12-2023,'Kyle Orlando'),

		(90088,'Man and The World',909000,10,'ClaA','ClaA_Man-and-The-World_Kyle-Orlando.jpg', 12-12-2023,'Kyle Orlando'),
		(90089,'The sweet house',209000,10,'ClaA','ClaA_The-sweet-house_JennV.jpg', 12-12-2023,'JennV'),

		(90090,'Male Deer and the river',259000,10,'ClaA','ClaA_Male-Deer-and-the-river_JennV.jpg', 12-12-2023,'JennV'),
		(90091,'The houre',459000,10,'ClaA','ClaA_The-hourse_JennV.jpg', 12-12-2023,'JennV'),

		(90092,'Family of nature',109000,10,'ClaA','ClaA_Family-of-nature_Kyle-Orlando.jpg', 12-12-2023,'Kyle Orlando'),
		(90093,'Couple',109000,10,'ClaA','ClaA_Couple_Kyle-Orlando.jpg', 12-12-2023,'Kyle Orlando'),

		(90094,'Four seasons trees life',109000,10,'ClaA','ClaA_Four-seasons-trees-life_Kyle-Orlando.jpg', 12-12-2023,'Kyle-Orlando'),
		(90095,'Human life',109000,10,'ClaA','ClaA_Human-life_Kyle-Orlando.jpg', 12-12-2023,'Kyle-Orlando')

 -- Cubism Paintings
 		(90078,'Womans',1099000,10,'CubP','CubP_Womans_Fernand-Léger.jpg', 12-12-2023,'Fernand Léger'),
		(90079,'The Musicians',1209000,10,'CubP','CubP_the-musicians_Vicente-Manansala.jpg', 12-12-2023,'Vicente Manansala'),

		(90080,'The Bird Seller',909000,10,'CubP','CubP_The-Bird-Seller_Vicente-Manansala.jpg', 12-12-2023,'Vicente Manansala'),
		(90081,'Paysage de montagne',209000,10,'CubP','CubP_paysage-de-montagne_Paul-Ackerman.jpg', 12-12-2023,'Paul Ackerman'),

		(90082,'Machinery',259000,10,'CubP','CubP_machinery_Vicente-Manansala.jpg', 12-12-2023,'Vicente Manansala'),
		(90083,'Folklore Kerala II',459000,10,'CubP','CubP_folklore-kerala-ii_M.F.Husain.jpg', 12-12-2023,'M.F.Husain'),

		(90084,'Candle Vendors',109000,10,'CubP','CubP_Candle-Vendors_Vicente-Manansala.jpg', 12-12-2023,'Vicente Manansala'),
		(90085,'Guernica',109000,10,'CubP','CubP_Guernica_Pablo-Picasso.jpg', 12-12-2023,'Pablo Picasso')


 -- Art on Canvas
		(90077,'Laughing Fool',219000,10,'HisD','HisD_Laughing-Fool_Jacob-Cornelisz.-Van-Oostsanen.jpg', 12-12-2023,'Jacob Cornelisz.van Oostsanen'),

		(90063,'Models Sitting on sand dunes',219000,10,'CanA','CanV_models-sitting-on-sand-dunes-in-california_clifford-coffin.jpg', 12-12-2023,'Clifford Coffin'),
		(90064,'Comic Boom on Blue',259000,10,'CanA','CanV_comic-boom-on-blue_mitch-frey.jpg', 12-12-2023,'Mitch Frey'),

		(90065,'Waves on na pali shore',509000,10,'CanA','CanV_waves-on-na-pali-shore_john-clark.jpg', 12-12-2023,'John Clark'),
		(90066,'Green Sea Turtle big island hawaii',209000,10,'CanA','CanV_green-sea-turtle-big-island-hawaii_paul-souders.jpg', 12-12-2023,'Paul Souders'),

		(90067,'Camargue White Hourse',519000,10,'CanA','CanV_Camargue-White-Hourse_Paul-Souders.jpg', 12-12-2023,'Paul Souders'),
		(90068,'The day begins',859000,10,'CanA','CanV_the-day-begins_jc-findley.jpg', 12-12-2023,'Jc Findley'),

		(90069,'Mountain Sunset',1099000,10,'CanA','CanV_mountain-sunset_c-steele.jpg', 12-12-2023,'C Steele'),
		(90070,'Show off',1209000,10,'CanA','CanV_show-off_cynthia-decker.jpg', 12-12-2023,'Cynthia Decker'),

		(90071,'The chase',909000,10,'CanA','CanV_The-chase_Samatha.jpg', 12-12-2023,'Samatha'),
		(90072,'Mountains Forest Original',209000,10,'CanA','CanV_Mountains-Forest-Original_Yehor-Dulin.jpg', 12-12-2023,'Yehor-Dulin'),

		(90073,'Cigars and Brandy',259000,10,'CanA','CanV_Cigars-and-Brandy_Samatha.jpg', 12-12-2023,'Samatha'),
		(90074,'La Casa Giallo verde',459000,10,'CanA','CanV_La-Casa-Giallo-verde_Guido-Borelli.jpg', 12-12-2023,'Guido Borelli'),

		(90075,'I Girasoli Nel Campo',109000,10,'CanA','CanV_I-Girasoli-Nel-Campo_Guido-Borelli.jpg', 12-12-2023,'Guido-Borelli'),
		(90076,'Le Persiane Sulla Valle',109000,10,'CanA','CanV_Le-Persiane-Sulla-Valle_Guido-Borelli.jpg', 12-12-2023,'Guido-Borelli')

 -- Best-Selling
		(90049,'Venice Sunset',209000,10,'BesC','BesC_Venice-Sunset_Behshad-Arjomandi.jpg', 12-12-2023,'Behshad Arjomandi'),
		(90050,'Tea and Fruits',209000,10,'BesC','BesC_Tea-and-Fruits_Kunlong-Wang.jpg', 12-12-2023,'Kunlong Wang'),

		(90051,'Still life',209000,10,'BesC','BesC_Still-life-painting_Kunlong-Wang.jpg', 12-12-2023,'Kunlong Wang'),
		(90052,'Peaches in the basket',209000,10,'BesC','BesC_Peaches-in-the-basket_Kunlong-Wang.jpg', 12-12-2023,'Kunlong Wang'),

		(90053,'Oranges',209000,10,'BesC','BesC_Oranges_Kunlong-Wang.jpg', 12-12-2023,'Kunlong Wang'),
		(90054,'Summer tenderness',209000,10,'BesC','BesC_BesC_Summer-tenderness_Nadins-ART.jpg', 12-12-2023,'Nadins ART'),

		(90055,'Recovery of the weary sprit',209000,10,'BesC','BesC_Recovery-of-the-weary-sprit_Nadin-ART.jpg', 12-12-2023,'Nadin ART'),
		(90056,'Perfect summer day',209000,10,'BesC','BesC_Perfect-summer-day_Nadins-ART.jpg', 12-12-2023,'Nadins ART'),

		(90057,'Looking At The Sky',209000,10,'BesC','BesC_Looking-At-The-Sky_Evgeni-Gordiets.jpg', 12-12-2023,'Evgeni Gordiets'),
		(90058,'Sandy Beach Island',209000,10,'BesC','BesC_Sandy-Beach-Island_Evgeni-Gordiets.jpg', 12-12-2023,'Evgeni Gordiets'),

		(90059,'Summer Promenade',209000,10,'BesC','BesC_Summer-Promenade_Evgeni-Gordiets.jpg', 12-12-2023,'Evgeni Gordiets'),
		(90060,'Summer in a park',209000,10,'BesC','BesC_Summer-in-a-park_Evgeni-Gordiets.jpg', 12-12-2023,'Evgeni Gordiets'),

		(90061,'Among the Islands',209000,10,'BesC','BesC_Among-the-Islands_Evgeni-Gordiets.jpg', 12-12-2023,'Evgeni Gordiets'),
		(90062,'Blue Sky Afternoon',209000,10,'BesC','BesC_Blue-Sky-Afternoon_Evgeni-Gordiets.jpg', 12-12-2023,'Evgeni Gordiets')

 -- Art for bedroom
		(90042,'Flourish Of Spring',209000,10,'BedR','BedR_Flourish-Of-Spring_Timothy-OToole-Bold.jpg', 12-12-2023,'Timothy OToole Bold'),
		(90043,'Drury',209000,10,'BedR','BedR_Drury_Parvez-Taj.jpg', 12-12-2023,'Parvez Taj'),
		(90044,'Alone in the Forest',209000,10,'BedR','BedR_Alone-in-the-Forest_Robert-Farkas.jpg', 12-12-2023,'Robert Farkas'),
		(90045,'The Ride Colorful Bike',209000,10,'BedR','BedR_enjoy-the-ride-colorful-bike-painting_linda-woods.jpg', 12-12-2023,'Linda Woods'),
		(90046,'After The Storm Abstract Beach',209000,10,'BedR','BedR_after-the-storm-abstract-beach-landscape_linda-woods.jpg', 12-12-2023,'Linda Woods'),
		(90047,'Beach Abstract',209000,10,'BedR','BedR_beach-abstract-painting_linda-woods.jpg', 12-12-2023,'Linda Woods'),
		(90048,'Tropical Green Leaves',209000,10,'BedR','BedR_Tropical-Green-Leaves-Pattern_Mark-Ashkenazi.jpg', 12-12-2023,'Mark Ashkenazi'),


 -- AbsP

		(90026,'Watercolor Tree Ring',209000,10,'AbsP','AbsP_Watercolor-Tree-Ring_Ethan-Harper.jpg', 12-12-2023,'Ethan Harper'),
		(90027,'Lake Dream',209000,10,'AbsP','AbsP_Lake_Vesna-Antic.jpg', 12-12-2023,'Vesna Antic'),
		(90028,'Family Trees',209000,10,'AbsP','AbsP_Family-trees_Vesna-Antic.jpg', 12-12-2023,'Vesna Antic'),
		(90029,'The Inexplicable Ignition Of Time',209000,10,'AbsP','AbsP_The-Inexplicable-Ignition-Of-Time_Mark-M-Mellon.jpg', 12-12-2023,'Mark M Mellon'),
		(90030,'The Pool Room at the Four Seasons New York',209000,10,'AbsP','AbsP_The-Pool-Room-at-the-Four-Seasons-New-York_Beverly-Brown.jpg', 12-12-2023,'Beverly Brown'),
		(90031,'Footpath through Dunes Cape Cod Beach',209000,10,'AbsP','AbsP_Footpath-through-Dunes-Cape-Cod-Beach-Painting_Beverly-Brown.jpg', 12-12-2023,'Beverly Brown'),
		(90032,'Path Monets Garden Watercolor',209000,10,'AbsP','AbsP_Path-Monets-Garden-Watercolor_Beverly-Brown.jpg', 12-12-2023,'Beverly Brown'),
		(90033,'Manhattanhenge New-York Skyline',209000,10,'AbsP','AbsP_Manhattanhenge-New-York-Skyline_Beverly-Brown.jpg', 12-12-2023,'Beverly Brown'),
		(90034,'The Breathing',209000,10,'AbsP','AbsP_The-breathing_Makarova.jpg', 12-12-2023,'Makarova'),
		(90035,'Touch of Crude',209000,10,'AbsP','AbsP_Touch-of-Crude_Makarova.jpg', 12-12-2023,'Makarova'),
		(90036,'Wounded fawn',209000,10,'AbsP','AbsP_Wounded-fawn_Makarova.jpg', 12-12-2023,'Makarova'),
		(90037,'C.E.L.L.S',209000,10,'AbsP','AbsP_C.E.L.L.S_Makarova.jpg', 12-12-2023,'Makarova'),
		(90038,'Cherry Blossom Trees',209000,10,'AbsP','AbsP_Cherry-Blossom-Trees_Beverly-Brown.jpg', 12-12-2023,'Beverly-Brown'),
		(90039,'Fresh Paint',209000,10,'AbsP','AbsP_Fresh-Paint_Jane-Davies.jpg', 12-12-2023,'Jane Davies'),
		(90040,'On the eve of that day',209000,10,'AbsP','AbsP_On-the-eve-of-that-day_Sergiy-Dekalyuk.jpg', 12-12-2023,'Sergiy Dekalyuk'),
		(90041,'Unknown place',209000,10,'AbsP','AbsP_Unknown-place-2_Makarova.jpg', 12-12-2023,'Makarova')
