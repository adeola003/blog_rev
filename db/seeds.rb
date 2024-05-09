# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do |x|
  Blog.create!(
    title: "Blog #{x}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sit amet blandit eros. Suspendisse sit amet est a diam consequat sollicitudin. Nam at gravida est. Quisque pretium nunc velit, a vulputate diam venenatis ut. Nullam ultricies, eros id congue euismod, erat augue fermentum ligula, vitae elementum erat quam eu elit. Nunc ultricies viverra lacus, eu placerat ex condimentum et. Duis iaculis molestie tellus a venenatis. Nunc vitae feugiat libero. Integer diam lorem, suscipit id dolor at, dignissim mollis quam. Nulla hendrerit lobortis porttitor. Maecenas eleifend eget neque sed blandit."
  )
end

puts "10 Blogs created"

9.times do |x|
  Portfolio.create!(
    title: "Portfolio number #{x}",
    subtitle: "Subtitle number #{x}",
    body: "Sed iaculis aliquam ipsum ac pretium. Integer tempus est ac nunc finibus placerat. Quisque posuere libero nisl. Mauris id metus at risus consequat tincidunt. Praesent eu dolor non ligula efficitur mattis. Quisque congue lobortis consectetur. Donec tincidunt tristique metus et hendrerit. Donec dapibus finibus cursus. Aliquam sodales posuere sodales.",
    main_image: "https://place-hold.it/600x450",
    thumb_image: "https://place-hold.it/300x150"
  )
end

puts "9 Portfolios created"

8.times do |x|
  Skill.create!(
    title: "Skill number #{x}" ,
    percent_utilized: rand(20..100)
  )

end

puts "8 Skills created"

