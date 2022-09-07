# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Users
user1 = User.new(name: "Arturo", email: "ahpareja@gmail.com")
user1.password = "123456"
user1.password_confirmation = "123456"
user1.confirm
user1.save
user2 = User.new(name: "Lily", email: "lily@gmail.com")
user2.password = "123456"
user2.password_confirmation = "123456"
user2.confirm
user2.save

# Groups
group1_1 = Group.create(name: 'Fast Food', icon: 'https://cdn2.howtostartanllc.com/images/business-ideas/business-idea-images/fast-food.jpg', user_id: user1.id)
group1_2 = Group.create(name: 'Travel', icon: 'https://png.pngtree.com/png-clipart/20191121/original/pngtree-holiday-vintage-car-with-sunset-in-the-beach-background-vector-png-image_5103489.jpg', user_id: user1.id)
group2_1 = Group.create(name: 'Rent', icon: 'https://thumbs.dreamstime.com/z/house-rent-vector-illustration-52179738.jpg', user_id: user2.id)
group2_2 = Group.create(name: 'Pets', icon: 'https://www.goredforwomen.org/-/media/Healthy-Living-Images/Healthy-Lifestyle/Pets/puppy-kitten-heart.jpg', user_id: user2.id)

# Operations
# op1_1 = Operation.create(name: 'Pizza', amount: 15.50, author_id: user1.id)
# op1_2 = Operation.create(name: 'Tuna Sandwich', amount: 3.15, author_id: user1.id)
# op1_3 = Operation.create(name: 'Electricity', amount: 190.50, author_id: user1.id)
# op1_4 = Operation.create(name: 'Gas', amount: 301.98, author_id: user1.id)
# op2_1 = Operation.create(name: 'House A', amount: 250700.00, author_id: user2.id)
# op2_2 = Operation.create(name: 'House B', amount: 390500.00, author_id: user2.id)
# op2_3 = Operation.create(name: 'John', amount: 312.00, author_id: user2.id)
# op2_4 = Operation.create(name: 'Mill', amount: 312.00, author_id: user2.id)

# # Group Operations
# group1_1.operations += [op1_1, op1_2]
# group1_2.operations += [op1_3, op1_4]
# group2_1.operations += [op2_1, op2_2]
# group2_2.operations += [op2_3, op2_4]
