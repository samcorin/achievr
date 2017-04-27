# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
all = User.all
all.each do |user|
  user.mentor = nil
  user.save!
end

Badge.destroy_all
User.destroy_all
Resource.destroy_all
Team.destroy_all
Company.destroy_all

puts "Creating company & team"
company = Company.create!(
  name: 'Indeed.com',
  mission: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  profile: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.',
  product: 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.',
)

team = Team.create!(
  name: 'Sales Team',
  company: company
)

team2 = Team.create!(
  name: 'Engineering Team',
  company: company
)

leadership = Team.create!(
  name: 'Leadership Team',
  company: company
)



puts 'Creating users...'
# TODO: more employees that belong to the same team

sam = User.create!(
  first_name: 'Sam',
  last_name: 'Corin',
  points: 0,
  email: 'sam@indeed.com',
  password: '123123',
  photo: "http://res.cloudinary.com/hidehiro98/image/upload/v1492760706/sam_jokcp6.jpg",
  bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  team: team
  position: 'Sales Manager'
)

nico = User.create!(
  first_name: 'Nicolas',
  last_name: 'Duchemin',
  points: 0,
  email: 'nicolas@indeed.com',
  password: '123123',
  photo: "http://res.cloudinary.com/hidehiro98/image/upload/v1492760706/nico_r2kflm.jpg",
  bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  team: team
  position: 'Sales'
)

hide = User.create!(
  first_name: 'Hidehiro',
  last_name: 'Nagaoka',
  points: 0,
  email: 'hidehiro@indeed.com',
  password: '123123',
  photo: "http://res.cloudinary.com/hidehiro98/image/upload/v1492760707/hide_u4ff8b.jpg",
  bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  position: 'Sales'
)

dim = User.create!(
  first_name: 'Dimitri',
  last_name: 'Bosch',
  points: 0,
  email: 'dimitri@indeed.com',
  password: '123123',
  photo: "http://res.cloudinary.com/hidehiro98/image/upload/v1492760706/dim_e8ykqe.jpg",
  bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  team: team
  position: 'Pre-Sales'
)


paul = User.create!(
  first_name: 'Paul',
  last_name: 'Gaumer',
  points: 0,
  email: 'paul@indeed.com',
  password: '123123',
  photo: "http://res.cloudinary.com/hidehiro98/image/upload/v1493012932/paul_l3sten.jpg",
  bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  team: team
  position: 'Pre-Sales'
)


sylvain = User.create!(
  first_name: 'Sylvain',
  last_name: 'Pierre',
  points: 0,
  email: 'sylvain@indeed.com',
  password: '123123',
  photo: "http://res.cloudinary.com/hidehiro98/image/upload/v1493012934/sylvain_flyqtb.png",
  bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  team: team
  position: 'Pre-Sales'
)

boris = User.create!(
  first_name: 'Boris',
  last_name: 'Paillard',
  points: 0,
  email: 'boris@indeed.com',
  password: '123123',
  photo: "http://res.cloudinary.com/hidehiro98/image/upload/v1493012932/boris_q1q3qv.jpg",
  bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  team: team
  position: 'Engineer'
)

sebastien = User.create!(
  first_name: 'Sebastien',
  last_name: 'Saunier',
  points: 0,
  email: 'sebastien@indeed.com',
  password: '123123',
  photo: "http://res.cloudinary.com/hidehiro98/image/upload/v1493012932/saunier_zwrxwb.jpg",
  bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  team: team
  position: 'Solution Architect'
)


sam.mentor = dim
sam.save!

nico.mentor = dim
nico.save!

hide.mentor = dim
hide.save!

dim.mentor = sam
dim.save!

paul.mentor = boris
paul.save!

sylvain.mentor = boris
sylvain.save!

sebastien.mentor = boris
sebastien.save!

boris.mentor = sebastien
boris.save!



puts "Creating resources..."

resource = Resource.create!(
  name: 'Sales Training',
  photo: 'https://lorempixel.com/200/200/business',
  url: 'https://www.slideshare.net/cemara288/basic-sales-training',
  team: team
)


puts "Creating objectives"
Objective.create!(
  name: 'Fill the personal information sheet',
  due_date: '2017-05-10',
  user: sam,
)

Objective.create!(
  name: 'Fill the payroll information sheet',
  due_date: '2017-05-10',
  user: sam,
)

Objective.create!(
  name: 'Fill the health insurance information sheet',
  due_date: '2017-05-10',
  user: sam,
)

Objective.create!(
  name: 'Get the lunch appointment with your mentor',
  due_date: '2017-05-10',
  user: sam,
)


Objective.create!(
  name: 'Fill the personal information sheet',
  due_date: '2017-05-10',
  user: nico,
)

Objective.create!(
  name: 'Fill the payroll information sheet',
  due_date: '2017-05-10',
  user: nico,
)

Objective.create!(
  name: 'Fill the health insurance information sheet',
  due_date: '2017-05-10',
  user: nico,
)

Objective.create!(
  name: 'Get the lunch appointment with your mentor',
  due_date: '2017-05-10',
  user: nico,
)


Objective.create!(
  name: 'Fill the personal information sheet',
  due_date: '2017-05-10',
  user: hide,
)

Objective.create!(
  name: 'Fill the payroll information sheet',
  due_date: '2017-05-10',
  user: hide,
)

Objective.create!(
  name: 'Fill the health insurance information sheet',
  due_date: '2017-05-10',
  user: hide,
)

Objective.create!(
  name: 'Get the lunch appointment with your mentor',
  due_date: '2017-05-10',
  user: hide,
)




# TODO: create Places

puts 'Finished!'
