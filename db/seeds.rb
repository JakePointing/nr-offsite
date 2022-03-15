inds = [
  {
    name: "Jeff Bezos",
    title: "CEO of Amazon",
    location: "Palo Alto",
    description: 'In late 1993, Bezos decided to establish an online bookstore. He left his job at D. E. Shaw and founded Amazon in his garage on July 5, 1994, after writing its business plan on a cross-country drive from New York City to Seattle. Prior to settling on Seattle, Bezos had investigated setting up his company at an Indian reservation near San Francisco in order to avoid paying taxes. Bezos initially named his new company Cadabra but later changed the name to Amazon after the Amazon River in South America, in part because the name begins with the letter A, which is at the beginning of the alphabet. At the time, website listings were alphabetized, so a name starting with "A" would appear sooner when customers conducted online searches. In addition, he regarded "Amazon," the name of the worlds largest river as fitting for what he hoped would become the worlds largest online bookstore. He accepted an estimated $300,000 from his parents and invested in Amazon. He warned many early investors that there was a 70% chance that Amazon would fail or go bankrupt. Although Amazon was originally an online bookstore, Bezos had always planned to expand to other products. Three years after Bezos founded Amazon, he took it public with an initial public offering (IPO). In response to critical reports from Fortune and Barrons, Bezos maintained that the growth of the Internet would overtake competition from larger book retailers such as Borders and Barnes & Noble.'
  },
  {
    name: "Mark Zuckerberg",
    title: "CEO of Facebook",
    location: "New York",
    description: "On February 4, 2004, Zuckerberg launched Facebook from his Harvard dormitory room. An earlier inspiration for Facebook may have come from Phillips Exeter Academy, the prep school from which Zuckerberg graduated in 2002. It published its own student directory, 'The Photo Address Book', which students referred to as 'The Facebook'. Such photo directories were an important part of the student social experience at many private schools. With them, students were able to list attributes such as their class years, their friends, and their telephone numbers."
  },
  {
    name: "Lord Alan Sugar",
    title: "Venture Capitalist",
    location: "London",
    description: "The name of the company was formed from his initials: Alan Michael Sugar Trading. It began as a general importer/exporter and wholesale; by 1970 the first manufacturing venture was underway. He achieved lower production prices by using injection moulding plastics for hi-fi turntable covers, severely undercutting competitors who used vacuum-forming processes. Manufacturing capacity was expanded to include the production of audio amplifiers and tuners."
  }
]




inds.each do |data|
  individual = Individual.create(data)
  (2..5).to_a.sample.times do 
    role_held = {
      start_date: Faker::Time.between(from: DateTime.now - 20.year, to: DateTime.now - 10.year),
      end_date: Faker::Time.between(from: DateTime.now - 20.year, to: DateTime.now - 10.year),
      organisation: Faker::Company.name,
      position: Faker::Company.profession,
      size: [10000000, 15000000, 20000000].sample,
      ownership: Faker::Company.type,
      sector: Faker::Company.industry,
      individual: individual
    }
    RoleHeld.create(role_held)
  end
end
