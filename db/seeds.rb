Post.destroy_all
User.destroy_all


10.times do |i|
  Post.create(title: "Post #{i}", content: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis ipsam fuga, aliquam nisi iste? Ipsa, voluptas illo vitae officiis quisquam quidem facilis, quaerat veniam porro consequatur beatae possimus, placeat expedita!')
end
