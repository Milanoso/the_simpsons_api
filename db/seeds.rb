# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Member.destroy_all

puts "seeding"
Member.create(name:"Homer", talent: "Drinking", hobby: "Go to the Bar", image_url: "https://www.liveabout.com/thmb/ONSx7LM7c4D6Z4KTpDgXIB3Jbpg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/homer_2008_v2F_hires2-56a00fd43df78cafda9fde98.jpg");
Member.create(name:"Lisa", talent: "Play the Saxo", hobby: "Study", image_url: "https://www.liveabout.com/thmb/WRI_s3SbcNtXfaUMfSzsnbDYn8M=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/lisa-56a0099f3df78cafda9fb866.jpg");
Member.create(name:"Maggie", talent: "Being quiet", hobby: "Do nothing", image_url: "https://www.liveabout.com/thmb/_2dU0kXGSzLDaIB6mVNPs1tnxuk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Simpsons_09_Maggie_V2F-56a00c533df78cafda9fce92.jpg");
Member.create(name:"Bart", talent: "Skateboard", hobby: "Make troubles", image_url: "https://www.liveabout.com/thmb/QSXL8O7HrxRqq1zA0oNCNnSv6LQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/bart-56a0099f3df78cafda9fb869.jpg");
Member.create(name:"Marge", talent: "Tolerance", hobby: "To Sew", image_url: "https://www.liveabout.com/thmb/bWRDiLPc1PLEDF2W6osk_rI6SA4=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/margephone-57a96e025f9b58974ae4613f.jpg");
Member.create(name:"Abe(Grampa)", talent: "Complaint", hobby: "Tell stories", image_url: "https://www.liveabout.com/thmb/b5-rGzCPqEVhHl9QU3mENr8n_o8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/grampa-56a00a013df78cafda9fbce1.jpg");
Member.create(name:"Mr Burns", talent: "Being evil", hobby: "Make money",image_url: "https://www.liveabout.com/thmb/lGKS2vLwExJi44mOuge3Aq508pg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/mrburns170x250-56a00a685f9b58eba4ae9c15.jpg");
Member.create(name:"Krusty the Clown", talent: "Being funny", hobby: "To smoke", image_url:"https://www.liveabout.com/thmb/Y0-nJyDXpVOMJ4K3w7oUfxh1Bsw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/krustyheyhey170x250-56a00a683df78cafda9fc159.jpg");

puts "seeding complete, #{Member.count} members were created"
