# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create ([
#     {email: "lorene@test.com", password: "password1"},
#     {email: "nad@test.com", password: "password2"},
#     {email: "yeshna@test.com", password: "password3"},
#     {email: "jp@test.com", password: "password4"}
# ])

Company.create ([
    {
    name: "Google",
    description: "Google LLC is an American multinational technology company that focuses on artificial intelligence, search engine technology, online advertising, cloud computing, computer software, quantum computing, e-commerce, and consumer electronics.",
    address: "Ebene, Mauritius",
    website: "www.google.com",
    zoom: "google.recruit",
    phone_number: "+123456789",
    photo: "app/assets/images/google_logo.png"
    }

    {
    name: "Slack",
    description: "Slack is a messaging program designed specifically for the workplace. Developed by American software company Slack Technologies and now owned by Salesforce, Slack offers many IRC-style features, including persistent chat rooms (channels) organized by topic, private groups, and direct messaging.",
    address: "Ebene, Mauritius",
    website: "www.slack.com",
    zoom: "slack.recruit",
    phone_number: "+123456789",
    photo: "app/assets/images/slack_logo.png"
    }

    {
    name: "Dropbox",
    description: "Dropbox is a file hosting service operated by the American company Dropbox, Inc., headquartered in San Francisco, California, U.S. that offers cloud storage, file synchronization, personal cloud, and client software. Dropbox was founded in 2007 by MIT students Drew Houston and Arash Ferdowsi as a startup company, with initial funding from seed accelerator Y Combinator.",
    address: "Ebene, Mauritius",
    website: "www.dropbox.com",
    zoom: "dropbox.recruit",
    phone_number: "+123456789",
    photo: "app/assets/images/dropbox_logo.png"
    }

    {
    name: "Github",
    description: "GitHub, Inc. is a provider of Internet hosting for software development and version control using Git. It offers the distributed version control and source code management (SCM) functionality of Git, plus its own features. It provides access control and several collaboration features such as bug tracking, feature requests, task management, continuous integration, and wikis for every project.",
    address: "Ebene, Mauritius",
    website: "www.github.com",
    zoom: "github.recruit",
    phone_number: "+123456789",
    photo: "app/assets/images/github_logo.png"
    }
])

Developer.create ([
    {
    first_name: "Harry",
    last_name: "Potter",
    biography: "Hello, I am Web Developer with 2 Years of experience working with startups and specialized in JavaScript",
    phone_number: "+123456789",
    address: "vacoas, Mauritius",
    website: "www.harrypotter.com",
    zoom: "harry.potter",
    github: "potter",
    skills: ["JavaScript", "HTML", "CSS"],
    photo: "app/assets/images/harry_potter.jpg"
    }

    {
    first_name: "Tony",
    last_name: "Stark",
    biography: "The founder of Stark Enterprise and Freelancer for Web Dev Jobs for 15years. Interested in Jobs in Mauritius.",
    phone_number: "+123456789",
    address: "St Pierre, Mauritius",
    website: "www.stark.com",
    zoom: "stark",
    github: "stark",
    skills: ["JavaScript", "Ruby", "React"],
    photo: "app/assets/images/tony_stark.jpg"
}

    {
    first_name: "Bruce",
    last_name: "Wayne",
    biography: "I am the owner of Wayne Enterprise an international web development firm. I am also a freelance Back End Developer based in Mauritius.",
    phone_number: "+123456789",
    address: "Port Louis, Mauritius",
    website: "www.wayne.com",
    zoom: "wayne",
    github: "bwayne",
    skills: ["Java", "JavaScript", "Python", "C++", "Ruby"],
    photo: "app/assets/images/bruce_wayne.jpeg"
    }

    {
    first_name: "James",
    last_name: "Bond",
    biography: "Hi, I am Web Developer with 7 Years of experience as a freelancer around the globe.",
    phone_number: "+123456789",
    address: "Grand Baie, Mauritius",
    website: "www.jamesbond.com",
    zoom: "bond",
    github: "jamesbond",
    skills: ["JavaScript", "Python", "Ruby", "HTML", "CSS"],
    photo: "app/assets/images/james_bond.jpeg"
    }
])