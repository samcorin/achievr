# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
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

puts 'Creating users...'
# TODO: more employees that belong to the same team

sam = User.create!(
  first_name: 'Sam',
  last_name: 'Corin',
  points: 0,
  email: 'sam@indeed.com',
  password: '123123',
  photo: "https://lorempixel.com/200/200/business",
  bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  team: team
)

User.create!(
  first_name: 'Nicolas',
  last_name: 'Duchemin',
  points: 0,
  email: 'nicolas@indeed.com',
  password: '123123',
  photo: "https://lorempixel.com/200/200/business",
  bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  team: team,
  mentor: sam
)

User.create!(
  first_name: 'Hidehiro',
  last_name: 'Nagaoka',
  points: 0,
  email: 'hidehiro@indeed.com',
  password: '123123',
  photo: "https://lorempixel.com/200/200/business",
  bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  team: team
)

User.create!(
  first_name: 'Dimitri',
  last_name: 'Bosch',
  points: 0,
  email: 'dimitri@indeed.com',
  password: '123123',
  photo: "https://lorempixel.com/200/200/business",
  bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  team: team
)


puts "Creating resources..."
resource = Resource.create!(
  name: 'Sales Training',
  photo: 'https://lorempixel.com/200/200/business',
  url: 'https://www.slideshare.net/cemara288/basic-sales-training',
  team: team
)

# TODO: create Places

puts 'Finished!'