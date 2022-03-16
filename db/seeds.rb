# inds = [
#   {
#     name: "Jeff Bezos",
#     title: "CEO of Amazon",
#     location: "Palo Alto",
#     description: 'In late 1993, Bezos decided to establish an online bookstore. He left his job at D. E. Shaw and founded Amazon in his garage on July 5, 1994, after writing its business plan on a cross-country drive from New York City to Seattle. Prior to settling on Seattle, Bezos had investigated setting up his company at an Indian reservation near San Francisco in order to avoid paying taxes. Bezos initially named his new company Cadabra but later changed the name to Amazon after the Amazon River in South America, in part because the name begins with the letter A, which is at the beginning of the alphabet. At the time, website listings were alphabetized, so a name starting with "A" would appear sooner when customers conducted online searches. In addition, he regarded "Amazon," the name of the worlds largest river as fitting for what he hoped would become the worlds largest online bookstore. He accepted an estimated $300,000 from his parents and invested in Amazon. He warned many early investors that there was a 70% chance that Amazon would fail or go bankrupt. Although Amazon was originally an online bookstore, Bezos had always planned to expand to other products. Three years after Bezos founded Amazon, he took it public with an initial public offering (IPO). In response to critical reports from Fortune and Barrons, Bezos maintained that the growth of the Internet would overtake competition from larger book retailers such as Borders and Barnes & Noble.'
#   },
#   {
#     name: "Mark Zuckerberg",
#     title: "CEO of Facebook",
#     location: "New York",
#     description: "On February 4, 2004, Zuckerberg launched Facebook from his Harvard dormitory room. An earlier inspiration for Facebook may have come from Phillips Exeter Academy, the prep school from which Zuckerberg graduated in 2002. It published its own student directory, 'The Photo Address Book', which students referred to as 'The Facebook'. Such photo directories were an important part of the student social experience at many private schools. With them, students were able to list attributes such as their class years, their friends, and their telephone numbers."
#   },
#   {
#     name: "Lord Alan Sugar",
#     title: "Venture Capitalist",
#     location: "London",
#     description: "The name of the company was formed from his initials: Alan Michael Sugar Trading. It began as a general importer/exporter and wholesale; by 1970 the first manufacturing venture was underway. He achieved lower production prices by using injection moulding plastics for hi-fi turntable covers, severely undercutting competitors who used vacuum-forming processes. Manufacturing capacity was expanded to include the production of audio amplifiers and tuners."
#   }
# ]




# inds.each do |data|
#   individual = Individual.create(data)
#   (2..5).to_a.sample.times do 
#     role_held = {
#       start_date: Faker::Time.between(from: DateTime.now - 20.year, to: DateTime.now - 10.year),
#       end_date: Faker::Time.between(from: DateTime.now - 20.year, to: DateTime.now - 10.year),
#       organisation: Faker::Company.name,
#       position: Faker::Company.profession,
#       size: [10000000, 15000000, 20000000].sample,
#       ownership: Faker::Company.type,
#       sector: Faker::Company.industry,
#       individual: individual
#     }
#     RoleHeld.create(role_held)
#   end
# end

# ids = [
#   '619640c0397dc14dfddf3e2f',
#   '6156d8cccb5bf97ed77f586e',
#   '6166f219e033b31db77657d5',
#   '6127b20e5553266354188532',
#   '5f0c3cbd08843f174fa73cae',
#   '5dce8d71d59fba3a38eb697c',
#   '60912655b690b65e4297f790',
#   '5947a96100230a7e0c9d2b87'
# ]

# ids.map do |id|
#   individual = Login.find(id).individual
#   roles_held = individual.roles_held
#   rh_hash = roles_held.map do |rh|
#     {
#       organisation: rh.organisation,
#       start_date: rh.from,
#       end_date: rh.to,
#       position: rh.position
#     }
#   end
#   {
#     name: individual.name,
#     location: individual.country,
#     individual_id: individual.id,
#     photo: individual.photo,
#     roles_held: rh_hash
#   }
# end


data = [
  {:name=>"Liz Collins",
  :location=>"United Kingdom",
  :individual_id=>"619640c6f60f12146ce7c64f",
  :photo_url=>nil,
  :roles_held=>
   [{:organisation=>"INTERSERVE LTD", :start_date=>"2019-11", :end_date=>"2020-04", :position=>"Interim Chief Financial Officer"},
    {:organisation=>"FULLER SMITH & TURNER PLC", :start_date=>"2019-04", :end_date=>"2019-09", :position=>"Interim Chief Financial Officer"},
    {:organisation=>"WILKO RETAIL LTD (Wilkinson Hardware Stores Ltd prior to 06/2014)", :start_date=>"2018-03", :end_date=>"2018-10", :position=>"Interim Chief Financial Officer"}]},
 {:name=>"Parul Kanabar",
  :location=>"United Kingdom",
  :individual_id=>"6099004dc49b87627c8f505f",
  :photo_url=>nil,
  :roles_held=>
   [{:organisation=>"MASTERS PHARMACEUTICALS LTD (Masters Speciality Pharma Ltd prior to 05/2014)", :start_date=>"2019-03", :end_date=>nil, :position=>"CFO"},
    {:organisation=>"AEA INTERNATIONAL HOLDINGS PTE LTD (International SOS)", :start_date=>"2014-11", :end_date=>"2018-01", :position=>"CFO Northern Europe"},
    {:organisation=>"PAREXEL INTERNATIONAL LTD", :start_date=>"2009-06", :end_date=>"2014-10", :position=>"FP&A Director"},
    {:organisation=>"MONSTER.COM INC", :start_date=>"2008-06", :end_date=>"2009-05", :position=>"Interim Finance Director Scandinavia"}]},
 {:name=>"Dipesh Patel",
  :location=>"United Kingdom",
  :individual_id=>"6166f219e033b31db77657d6",
  :photo_url=>"https://nuroleproduction.s3.eu-west-1.amazonaws.com//uploads/images/6166f219e033b31db77657d6/photo",
  :roles_held=>
   [{:organisation=>"MACQUARIE CAPITAL GROUP LTD", :start_date=>"2014-12", :end_date=>"2017-09", :position=>"Board Member - Executive Director"},
    {:organisation=>"MACQUARIE BANK PTY LTD", :start_date=>"2014-12", :end_date=>"2017-09", :position=>"Executive Committee Approver/Director"},
    {:organisation=>"EXECUTION NOBLE RESEARCH LTD", :start_date=>"2009-06", :end_date=>"2014-09", :position=>"Director - Executive Director"},
    {:organisation=>"HAITONG BANK SA (Banco Espírito Santo de Investimento SA prior to 09/2015)", :start_date=>"2011-01", :end_date=>"2014-09", :position=>"Member of the Executive Committee"},
    {:organisation=>"HAITONG BANK SA (Banco Espírito Santo de Investimento SA prior to 09/2015)", :start_date=>"2011-01", :end_date=>"2014-09", :position=>"Executive Director"},
    {:organisation=>"Macquarie Europe Limited", :start_date=>"2014-12", :end_date=>"2017-09", :position=>"Member of the Executive Committee"},
    {:organisation=>"Payzazz (Start up)", :start_date=>"2016-01", :end_date=>"2017-12", :position=>"Chairman/Managing Director"},
    {:organisation=>"COOPERS & LYBRAND LTD", :start_date=>"1993-09", :end_date=>"1996-09", :position=>"Chartered Accountant"},
    {:organisation=>"DPS Capital Limited", :start_date=>"2002-04", :end_date=>"2005-03", :position=>"Founder/Chief Executive Officer"}]},
 {:name=>"Kate Rogers",
  :location=>"United Kingdom",
  :individual_id=>"6127b20e5553266354188533",
  :photo_url=>nil,
  :roles_held=>
   [{:organisation=>"GSK Pharmaceuticals", :start_date=>"2007-09", :end_date=>"2008-09", :position=>"Senior FD, SE Europe & Emerging Markets of Eurasia"},
    {:organisation=>"GSK Plc", :start_date=>"2019-03", :end_date=>"2022-02", :position=>"Global Finance Transformation Lead "},
    {:organisation=>"GSK Plc", :start_date=>"2017-03", :end_date=>"2019-02", :position=>"CFO France"},
    {:organisation=>"GSK PLC", :start_date=>"2016-02", :end_date=>"2017-03", :position=>"Director Global Planning & Analysis, Pharmaceuticals "},
    {:organisation=>"GSK Pharmaceuticals", :start_date=>"2011-01", :end_date=>"2012-08", :position=>"Europe Transformation Board Deputy Chair"},
    {:organisation=>"GSK Pharmaceuticals", :start_date=>"2008-09", :end_date=>"2010-12", :position=>"Regional CFO, Mid size Markets of Europe"}]},
 {:name=>"Miranda Sharp",
  :location=>"United Kingdom",
  :individual_id=>"5f0c3cbd08843f174fa73caf",
  :photo_url=>"https://nuroleproduction.s3.eu-west-1.amazonaws.com//uploads/images/5f0c3cbd08843f174fa73caf/photo",
  :roles_held=>
   [{:organisation=>"Information Commissioners Office", :start_date=>"2021-02", :end_date=>nil, :position=>"Technology Advisory Panel"},
    {:organisation=>"Metis Digital Limited", :start_date=>"2020-12", :end_date=>"", :position=>"Founder"},
    {:organisation=>"Centre for Cities", :start_date=>"2019-10", :end_date=>nil, :position=>"Trustee"},
    {:organisation=>"See Sense", :start_date=>"2018-06", :end_date=>"", :position=>"Commercial Advisor"},
    {:organisation=>"Digitial Framework Task Group", :start_date=>"2018-06", :end_date=>"", :position=>"Board Member"},
    {:organisation=>"Digital Transformation Task Group", :start_date=>"2020-06", :end_date=>"2022-04", :position=>"Steering Committee"},
    {:organisation=>"GLA Infrastructure Advisory Panel", :start_date=>"2020-02", :end_date=>"2022-04", :position=>"Panel member"},
    {:organisation=>"Smart London Board", :start_date=>"2017-06", :end_date=>"2021-08", :position=>"Member"},
    {:organisation=>"Ordnance Survey", :start_date=>"2016-06", :end_date=>"2020-04", :position=>"Director Innovation"},
    {:organisation=>"National Digital Twin Programme", :start_date=>"2019-01", :end_date=>"2021-03", :position=>"Stream Lead"}]},
 {:name=>"Sanjay Razdan",
  :location=>"United Kingdom",
  :individual_id=>"5dce8d71d59fba3a38eb697d",
  :photo_url=>"https://nuroleproduction.s3.eu-west-1.amazonaws.com//uploads/images/5dce8d71d59fba3a38eb697d/photo",
  :roles_held=>
   [{:organisation=>"Dywidag Systems International", :start_date=>"2017-12", :end_date=>"2019-11", :position=>"President "},
    {:organisation=>"CyNation Ltd", :start_date=>"2016-05", :end_date=>nil, :position=>"Advisory Board Member"},
    {:organisation=>"Qinetiq Group plc", :start_date=>"2013-01", :end_date=>"2016-04", :position=>"Division MD"},
    {:organisation=>"Qinetiq Group plc", :start_date=>"2010-08", :end_date=>"2013-12", :position=>"Director - Technology"},
    {:organisation=>"Eguana Technologies inc", :start_date=>"2010-04", :end_date=>"2010-08", :position=>"CEO"},
    {:organisation=>"DE LA RUE PLC", :start_date=>"2004-07", :end_date=>"2008-07", :position=>"Division MD"},
    {:organisation=>"Invensys plc", :start_date=>"2002-08", :end_date=>"2004-07", :position=>"Division Group President"},
    {:organisation=>"Tridium Inc", :start_date=>"2000-08", :end_date=>"2002-07", :position=>"Regional VP"},
    {:organisation=>"Honeywell International inc", :start_date=>"1993-10", :end_date=>"2000-06", :position=>"General Manager"},
    {:organisation=>"Honeywell Automation India ltd", :start_date=>"1989-05", :end_date=>"1991-11", :position=>"Various Positions"}]},
 {:name=>"Diane Tryneski",
  :location=>"United States of America",
  :individual_id=>"60912655b690b65e4297f791",
  :photo_url=>"https://nuroleproduction.s3.eu-west-1.amazonaws.com//uploads/images/60912655b690b65e4297f791/photo",
  :roles_held=>
   [
     {:organisation=>"PK Global (Portfolio Co, The Carlyle Group)", :start_date=>"2021-06", :end_date=>nil, :position=>"Independent Board Director"},
      {:organisation=>"Top", :start_date=>"2020-08", :end_date=>nil, :position=>"Board Advisor"},
      {:organisation=>"Exeest, Inc.", :start_date=>"2020-05", :end_date=>nil, :position=>"Board Advisor"},
      {:organisation=>"HBO/WarnerMedia", :start_date=>"2015-01", :end_date=>"2019-01", :position=>"EVP/Chief Digital Officer/Chief Technology Officer"},
      {:organisation=>"Time Warner/HBO", :start_date=>"2014-01", :end_date=>"2015-01", :position=>"EVP/Media & Technology Operations"},
      {:organisation=>"Time Warner/HBO", :start_date=>"2011-01", :end_date=>"2014-01", :position=>"EVP/Media, Production & Technology Operations"},
      {:organisation=>"Time Warner/HBO", :start_date=>"2008-12", :end_date=>"2011-01", :position=>"SVP/Operations & Engineering"},
      {:organisation=>"Disney ABC Television Group", :start_date=>"2006-12", :end_date=>"2008-12", :position=>"SVP/Television Operations "},
      {:organisation=>"Discovery  Inc", :start_date=>"2003-08", :end_date=>"2006-12", :position=>"EVP/SVP Discovery Production Group"},
      {:organisation=>"Disney ABC Television Group Inc", :start_date=>"1999-01", :end_date=>"2003-08", :position=>"SVP/Television Operations"},
      {:organisation=>"Disney ABC Television Group Inc", :start_date=>"1987-01", :end_date=>"1999-01", :position=>"Various Positions"},
      {:organisation=>"Southern New Hampshire University (SNHU)", :start_date=>"2021-10", :end_date=>nil, :position=>"Board of Trustees"}]
    },
 {:name=>"Alessandro Hatami",
  :location=>"United Kingdom",
  :individual_id=>"5947a96200230a7e0c9d2b88",
  :photo_url=>"https://nuroleproduction.s3.eu-west-1.amazonaws.com//uploads/images/5947a96200230a7e0c9d2b88/photo%20%289%29",
  :roles_held=>
   [
     {:organisation=>"Protégé Virtual management", :start_date=>"2000-01", :end_date=>"2002-07", :position=>"Director Marketing"},
      {:organisation=>"Mobile TeleSystems OJSC (\"MTS\")", :start_date=>"2019-11", :end_date=>nil, :position=>"Advisor to the Board"},
      {:organisation=>"Cashplus Bank", :start_date=>"2018-12", :end_date=>nil, :position=>"Non-Exec Board Member"},
      {:organisation=>"Georgia Tech Lorraine", :start_date=>"2018-05", :end_date=>nil, :position=>"Member Advisory Board"},
      {:organisation=>"Kickstart Accelerator", :start_date=>"2017-09", :end_date=>nil, :position=>"Mentor"},
      {:organisation=>"Curve OS Ltd", :start_date=>"2017-07", :end_date=>nil, :position=>"Investor and Board Advisor"},
      {:organisation=>"Basestone", :start_date=>"2016-03", :end_date=>"", :position=>"Investor "},
      {:organisation=>"Seedcamp Ltd", :start_date=>"2015-05", :end_date=>nil, :position=>"Mentor"},
      {:organisation=>"Techstars UK Ltd", :start_date=>"2015-01", :end_date=>nil, :position=>"Mentor"},
      {:organisation=>"The Pacemakers Ltd", :start_date=>"2014-11", :end_date=>nil, :position=>"Managing Partner"},
      {:organisation=>"Forestreet Ltd", :start_date=>"2017-01", :end_date=>"2018-04", :position=>"Managing Partner"},
      {:organisation=>"Advanced Payment Solutions Ltd (Cashplus)", :start_date=>"2014-12", :end_date=>"2018-12", :position=>"Advisor"},
      {:organisation=>"Startupbootcamp FinTech", :start_date=>"2014-01", :end_date=>"2018-08", :position=>"Mentor"},
      {:organisation=>"Lloyds Banking Group plc", :start_date=>"2013-11", :end_date=>"2014-09", :position=>"Group Director - Digital"},
      {:organisation=>"Lloyds Banking Group plc", :start_date=>"2011-09", :end_date=>"2013-11", :position=>"Division COO"},
      {:organisation=>"Walpole Associates LLP", :start_date=>"2010-07", :end_date=>"2011-08", :position=>"Principal"},
      {:organisation=>"Paypoint plc", :start_date=>"2008-01", :end_date=>"2009-09", :position=>"MD"},
      {:organisation=>"PayPal", :start_date=>"2004-04", :end_date=>"2007-12", :position=>"Director Large Merchant Services"},
      {:organisation=>"GE Capital Finance", :start_date=>"1994-04", :end_date=>"2000-01", :position=>"European Marketing Director"}
    ]
  }
]

data.each do |data_point|
  roles_held = data_point[:roles_held]
  data_point.delete(:roles_held)
  individual = Individual.create(data_point)
  roles_held.each do |rh|
    if rh[:start_date]
      splitted = rh[:start_date].split("-")
      rh[:start_date] = Date.new(splitted.first.to_i, splitted.last.to_i)
    end
    role_held = RoleHeld.new(rh)
    role_held.individual = individual
    role_held.save
  end
end
