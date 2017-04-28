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
  name: 'Smart BI',
  mission: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  profile: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.',
  product: 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.',
)

team = Team.create!(
  name: 'Sales Team',
  company: company,
  description: "The Sales Team is one of the most important element of Smart BI. The Sales Team is not only in charge of selling our BI solution, but to get the requirement from the customers in order to customize our enterprise software to their needs. The team is composed of Sales people who are in charge of the first contact with the customers. Then, they team up with Pre-Sales to get the requirements from the customer. The next step is having the sales, pre-sales and solution architect to work together to design the BI solution for our customers. Finally, they will pass all the information to the Implementation team."
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
  email: 'sam@smart-bi.com',
  password: '123123',
  photo: "http://res.cloudinary.com/hidehiro98/image/upload/v1492760706/sam_jokcp6.jpg",
  bio: "Sam spends his days working with all the members of the Sales Team, making sure that everything go smoothly with the Integration Team and the Marketing Team. He has been working for 15 years in the industry, and has a strong background selling enterprise software.",
  team: team,
  fun_fact: 'In his free time, Sam enjoys surfing the waves of Shonan.',
  position: 'Sales Manager',
  phone_number: '03-5000-8008'
)

nico = User.create!(
  first_name: 'Nicolas',
  last_name: 'Duchemin',
  points: 0,
  email: 'nicolas@smart-bi.com',
  password: '123123',
  photo: "http://res.cloudinary.com/hidehiro98/image/upload/v1492760706/nico_r2kflm.jpg",
  bio: "Nicolas has a strong background as a direct B2B sales, selling SaaS to enterprise customers. His connections are mainly with medium sized companies. Before joining Smart BI, he was working for a startup providing digital marketing solutions.",
  fun_fact: 'Nicolas used to play basketball national competion during high School.',
  team: team,
  position: 'Sales',
  phone_number: '03-5000-8007'
)

hide = User.create!(
  first_name: 'Hidehiro',
  last_name: 'Nagaoka',
  points: 0,
  email: 'hidehiro@smart-bi.com',
  password: '123123',
  photo: "http://res.cloudinary.com/hidehiro98/image/upload/v1492760707/hide_u4ff8b.jpg",
  bio: "Hidehiro  has a strong sales acumen and proven track record selling enterprise software to tech companies. He is solid are reliable. Prior to joining Smart BI, Hidehiro used to work for an SIer selling a multitude of solutions.",
  fun_fact: 'Hidehiro loves car, and he is the proud owner of a Skyline GT-T R34',
  team: team,
  position: 'Sales',
  phone_number: '03-5000-8006'
)

dim = User.create!(
  first_name: 'Dimitri',
  last_name: 'Bosch',
  points: 0,
  email: 'dimitri@smart-bi.com',
  password: '123123',
  photo: "http://res.cloudinary.com/hidehiro98/image/upload/v1492760706/dim_e8ykqe.jpg",
  bio: "Dimitri’s strength is to make complicated concepts simple. Besides his technical background, his interpersonal skills are helpful to team up with the Sales during negotiations. He has been working for 10 years, so he has a good knowledge of the product as well as the company.",
  fun_fact: 'Dimitri has seen the sun rise on top of Mount Fuji.',
  team: team,
  position: 'Pre-Sales',
  phone_number: '03-5000-8005'
)


paul = User.create!(
  first_name: 'Paul',
  last_name: 'Gaumer',
  points: 0,
  email: 'paul@smart-bi.com',
  password: '123123',
  photo: "http://res.cloudinary.com/hidehiro98/image/upload/v1493012932/paul_l3sten.jpg",
  bio: "Paul moved from the Development Team to the Sales Team recently. His technical knowledge of Smart BI is a huge asset for the customers as well as for the team. He used to work for several years for another enterprise software company as a Lead Developer.",
  fun_fact: 'Paul paid his university tuition fees by doing some web design gigs.',
  team: team,
  position: 'Pre-Sales',
  phone_number: '03-5000-8004'
)


sylvain = User.create!(
  first_name: 'Sylvain',
  last_name: 'Pierre',
  points: 0,
  email: 'sylvain@smart-bi.com',
  password: '123123',
  photo: "http://res.cloudinary.com/hidehiro98/image/upload/v1493012934/sylvain_flyqtb.png",
  bio: "Sylvain is a seasoned Pre-Sales with a strong sales background. With both technical and sales skills, he’s making sure to manage the customer’s expectations. He used to be sales but decided quickly that he wanted to move to the technical side.",
  fun_fact: 'Sylvain used to live in Vietnam for 10 years',
  team: team,
  position: 'Pre-Sales',
  phone_number: '03-5000-8003'
)

boris = User.create!(
  first_name: 'Boris',
  last_name: 'Paillard',
  points: 0,
  email: 'boris@smart-bi.com',
  password: '123123',
  photo: "http://res.cloudinary.com/hidehiro98/image/upload/v1493012932/boris_q1q3qv.jpg",
  bio: "Boris keeps improving the different modules composing Smart BI. He also works on testing experimental modules from the development team. Previously Boris was a lead engineer at lwg.com, a non-profit teaching how to code to kids.",
  fun_fact: 'You can find Boris relaxing at the onsen every week end.',
  team: team,
  position: 'Engineer',
  phone_number: '03-5000-8002'
)

sebastien = User.create!(
  first_name: 'Sebastien',
  last_name: 'Saunier',
  points: 0,
  email: 'sebastien@smart-bi.com',
  password: '123123',
  photo: "http://res.cloudinary.com/hidehiro98/image/upload/v1493012932/saunier_zwrxwb.jpg",
  bio: "As Solution Architect for  for Smart BI, Sebastien is responsible for integration the different solutions to match the customers’ needs. Prior to joining Smart BI, Sebastien headed up the software team at another BI Software company.",
  fun_fact: 'In his free time, Sebastien is working on several software open source projects.',
  team: team,
  position: 'Solution Architect',
  phone_number: '03-5000-8001'
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
  due_date: '2017-05-01',
  user: sam,
)

Objective.create!(
  name: 'Fill the payroll information sheet',
  due_date: '2017-05-01',
  user: sam,
)

Objective.create!(
  name: 'Fill the health insurance information sheet',
  due_date: '2017-05-01',
  user: sam,
)

Objective.create!(
  name: 'Get the lunch appointment with your mentor',
  due_date: '2017-05-01',
  user: sam,
)

Objective.create!(
  name: 'Smart BI Sales Training B01',
  due_date: '2017-05-02',
  user: sam,
)

Objective.create!(
  name: 'Meeting w/ Chris - Talk about strategy',
  due_date: '2017-05-02',
  user: sam,
)

Objective.create!(
  name: 'Sign the Non-disclosure Agreement',
  due_date: '2017-05-01',
  user: nico,
)

Objective.create!(
  name: 'Schedule a lunch appointment with your mentor',
  due_date: '2017-05-10',
  user: nico,
)

Objective.create!(
  name: 'Smart BI Sales Training B01',
  due_date: '2017-05-02',
  user: nico,
)

Objective.create!(
  name: 'Meeting w/ Chris - Talk about strategy',
  due_date: '2017-05-02',
  user: nico,
)

Objective.create!(
  name: 'Smart BI Sales Training B02',
  due_date: '2017-05-02',
  user: nico,
)

Objective.create!(
  name: 'Meeting with Mike from the development team',
  due_date: '2017-05-02',
  user: nico,
)

Objective.create!(
  name: 'One-on-one with Sam regarding the KPIs',
  due_date: '2017-05-02',
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

Objective.create!(
  name: 'Smart BI Sales Training B01',
  due_date: '2017-05-02',
  user: hide,
)

Objective.create!(
  name: 'Meeting w/ Chris - Talk about strategy',
  due_date: '2017-05-02',
  user: hide,
)


# TODO: create Places

puts 'Finished!'
