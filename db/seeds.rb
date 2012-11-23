# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.destroy_all

#name description price
Product.create(:name => 'Elephant Atta 10Kg', :description => %{<p>Elephant Medium Atta small bag</p>}, :image_url => 'elephant_atta_brown_10kg.jpg', :weight => '10Kg', :price => '12.99')

Product.create(:name => 'Elephant Atta 25Kg', :description => %{<p>Elephant Medium Atta big bag</p>}, :image_url => 'elephant_atta_brown_25kg.jpg', :weight => '25Kg', :price => '22.99')

Product.create(:name => 'Akash Rice 5kg', :description => %{<p>Akash Basmati Rice small bag</p>}, :image_url => 'Akash_basmati_rice_5kg.jpg', :weight => '5Kg', :price => '7.99')

Product.create(:name => 'Akash Rice 10Kg', :description => %{<p>Akash Basmati Rice big bag</p>}, :image_url => 'Akash_basmati_rice_10kg.jpg', :weight => '10Kg', :price => '15.99')

Product.create(:name => 'Chana Dal(Lentils)', :description => %{<p>spilt Chana dal<p>}, :image_url => 'channa_daal_2kg.jpg', :weight => '2Kg', :price => '3.99')

Product.create(:name => 'Moong Dal(Lentils)', :description => %{<p>washed Moong dal</p>}, :image_url => 'moong_daal_4kg.jpg', :weight => '4Kg', :price => '5.99')

Product.create(:name => 'Mango', :description => %{<p>Alphonso(Desi) Mango</p>}, :image_url => 'mango.jpg', :weight => '1Kg', :price => '3.99')

Product.create(:name => 'Full Chicken', :description => %{<p>Free range full chicken</p>}, :image_url => 'full_chicken.jpg', :weight => '1.6Kg', :price => '5.99')

Product.create(:name => 'Chicken Breast', :description => %{<p>boneless Chicken Breast</p>}, :image_url => 'chicken_breast.jpg', :weight => '1Kg', :price => '6.99')

Product.create(:name => 'Fish', :description => %{<p>Boneless Cod</p>}, :image_url => 'cod_fish.jpg', :weight => '1Kg', :price => '7.99')

Product.create(:name => 'Lamb', :description => %{<p>Lamb meat with Bones</p>}, :image_url => 'lamb.jpg', :weight => '1Kg', :price => '6.99')

Product.create(:name => 'Prawn', :description => %{<p>King Prawn without shell</p>}, :image_url => 'king_prawn.jpg', :weight => '1Kg', :price => '7.99')

Product.create(:name => 'Milk', :description => %{<p>New Dairy Milk</p>}, :image_url => 'milk.jpg', :weight => '2Lt', :price => '1.75')

Product.create(:name => 'Yogurt', :description => %{<p>Biopot Natural Yogurt</p>}, :image_url => 'yogurt.jpg', :weight => '500Ml', :price => '1.99')

Product.create(:name => 'Butter', :description => %{<p>Desi Ghee(Butter)</p>}, :image_url => 'desi_ghee.jpg', :weight => '500Gm', :price => '4.99')

Product.create(:name => 'Brown Bread', :description => %{<p>Wholemeal Brown Toast Bread</p>}, :image_url => 'brown_bread.jpg', :weight => '400Gm', :price => '1.59')

Product.create(:name => 'White Bread', :description => %{<p>White Toast Bread</p>}, :image_url => 'white_bread.jpg', :weight => '400Gm', :price => '1.59')

Product.create(:name => 'Naan Bread', :description => %{<p>Frash Packed Naan Bread</p>}, :image_url => 'naan.jpg', :weight => '4 Piece', :price => '2.59')

Product.create(:name => 'Green Peas', :description => %{<p>Bird Eye Green Peas</p>}, :image_url => 'green_peas.jpg', :weight => '1Kg', :price => '1.99')

Product.create(:name => 'Mix Veg', :description => %{<p>Bird Eye Mix Veg</p>}, :image_url => 'mix_veg.jpg', :weight => '1Kg', :price => '2.50')

Product.create(:name => 'Snack', :description => %{<p>Bombay Mix Namkeen</p>}, :image_url => 'bombay_mix.jpg', :weight => '400Gm', :price => '2.50')

Product.create(:name => 'Sweet', :description => %{<p>Indian Sweet Milk cake</p>}, :image_url => 'indian_sweet.jpg', :weight => '400Gm', :price => '4.50')

Product.create(:name => 'Tandoori Masala', :description => %{<p>Indus Tandoori Masala</p>}, :image_url => 'tandoori_masala.jpg', :weight => '1Kg', :price => '5.50')

Product.create(:name => 'Garam Masala', :description => %{<p>MDH Garam Masal</p>}, :image_url => 'garam_masala.jpg', :weight => '500Gm', :price => '3.50')

Product.create(:name => 'Chat Masala', :description => %{<p>MDH Chat Masala</p>}, :image_url => 'chat_masala.jpg', :weight => '250Gm', :price => '2.50')