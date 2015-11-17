# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Country.destroy_all
Target.destroy_all
Strike.destroy_all
Relation.destroy_all
User.destroy_all
Region.destroy_all

regions = Region.create([
    {name: "Kobane"}, {name: "Ar-Raqqah"}, {name: "Aleppo"}, {name: "Al-Hassakah"}, {name: "Idlib"}, {name: "Latakia"}, {name: "Hama"}, {name: "Deir ez-Zor"}, {name: "Tartous"}, {name: "Homs"}, {name: "Tadmur"}, {name: "Damascus"}, {name: "Rif Dimashq"}, {name: "Quneitra"}, {name: "Daraa"}, {name: "As-Suwayda"}
    ])

countries = Country.create([
    {name: "United States", reason: "To defeat 'ISIL' and prevent terrorist groups from establishing a base from which to attack the US. Also, to protect Iraq from disintigration.", assets: "Air Power, Sea Power, Special Forces, ISR, Monetary and Arms support to allies.", flag_link: "https://flagspot.net/images/u/us.gif"},
    {name: "Australia", reason: "To support its allies, and to retaliate for domestic terrorist attacks linked to ISIL", assets: "Air Power", flag_link: "https://flagspot.net/images/a/au.gif"},
    {name: "Canada", reason: "To support its allies in the War on Terror", assets: "Air Power", flag_link: ""},
    {name: "France", reason: "To defeat ISIL, retaliation for the November 13, 2015 attack on Paris. Formerly to support its allies in the War on Terror", assets: "Air Power. Possibly ISR and Special Forces", flag_link: "https://flagspot.net/images/f/fr.gif"},
    {name: "Bahrain", reason: "To counter Iraninan regional expansion. To support its allies in the War on Terror", assets: "Air Power, Monetary and Arms support to miliant groups", flag_link: "https://flagspot.net/images/b/bh.gif"},
    {name: "Jordan", reason: "Retaliation for the brutal execution of Moaz al-Kasaesbeh, a Jordanian pilot, by ISIL. And in support of its allies in the War on Terror.", assets: "", flag_link: "https://flagspot.net/images/j/jo.gif"},
    {name: "Morocco", reason: "", assets: "", flag_link: "https://flagspot.net/images/m/ma.gif"},
    {name: "Qatar", reason: "To counter Iranian regional expansion. To support its allies in the War on Terror.", assets: "Air Power. Monetary and Arms support to miliant groups.", flag_link: "NEED FLAG LINK"},
    {name: "Saudi Arabia", reason: "To counter Iranian regional influence. To support its allies in the War on Terror", assets: "Air Power. Monetary and Arms support to miliant groups.", flag_link: "NEED FLAG LINK"},
    {name: "Turkey", reason: "To destroy ISIL. To secure its borders, to stop the violence happening across its border, and to stem the flow of refugees. Also, to weaken and redirect Kurd militants.", assets: "Air Power. Artillary. Monetary and Arms support to miliant groups.", flag_link: "NEED FLAG LINK"},
    {name: "United Arab Emirates", reason: "To counter Iranian regional influence. To support its allies in the War on Terror.", assets: "Air Power. Monetary and Arms support to miliant groups.", flag_link: "NEED FLAG LINK"},
    {name: "United Kingdom", reason: "To defeat ISIL and end the recruitment and radicalization of UK citizens.", assets: "Air Power, Sea Power, ISR. Possibly Speical Forces and monetary/arms support to miliant groups.", flag_link: "NEED FLAG LINK"},
    {name: "Russia", reason: "To support the regime of Bashar Al-Assad. To counter Western and Arab support of anti-Assad militant groups. To support Iraninan regional influence.", assets: "Air Power, Sea Power, Land Forces, Monetary and Arms support to the Assad regime.", flag_link: "NEED FLAG LINK"},
    {name: "Iran", reason: "To support the regime of Bashar Al-Assad. To increase its regional influence. To counter Arab regional influence.", assets: "Ground forces, Monetary and Arms support to militant groups, military advisors/leadership.", flag_link: ""},
    {name: "Syrian Arab Republic", reason: "To preserve the dictatorship of President Bashar Al-Assad.", assets: "Air Power, Ground Forces, Chemical Weapons (WMD).", flag_link: "NEED FLAG LINK"}, {name: "Israel", reason: "To eliminate sophisticated weaponry and heavy artilliary (SAM and SSM systems) being delivered to Israel's mortal enemy, Hezbollah, by the Iranian, Russian, Syrian, and (allegedly) North Korean militaries.", assets: "Air Power, ISR. Possible sea power, artilliary and special forces.", flag_link: ""}
    ])
targets = Target.create([
    # Allied with Bashar al-Assad:
    {name: "Ba'ath Brigades"},
    {name: "Syrian Social Nationalist Party"},
    {name: "Arab Nationalist Party"},
    {name: "Syrian Resistance"},
    {name: "Arab Democratic Party"},
    {name: "Jaysh al-Muwahhideen"},
    {name: "Forces of Abu Ibrahim"},
    {name: "Sootoro"},
    {name: "PFLP-GC"},
    {name: "Liwa Al-Quds"},
    {name: "Palestine Liberation Army"},
    {name: "Liwa Abu al-Fadhal al-Abbas"},
    {name: "Liw Fatemiyoun"},
    {name: "Faylak Wa'ad al-Sadiq"},
    {name: "Fatah al-Intifada"},
    {name: "Popular Mobilizatoin Forces (of Iraq)"},
    {name: "DHKP-C"},
    {name: "Houthis"},
    {name: "Jaysh al-Wafaa"},
    {name: "Liwa Dhu al-Fiqar"},
    {name: "Dareh al-Sahel"},
    {name: "Dareh al-Areen"},
    {name: "Al-Hosn"},
    {name: "Dareh al-Watan"},
    {name: "al-Berri clan"},
    {name: "Tayy tribe militias"},
    {name: "al-Jihesh tribe militias"},
    {name: "Maghawir Forces"},
    {name: "Far Right Volunteers"},
    {name: "Popular Committees"},
    {name: "Slovonic Corps"},
    {name: "Hezbollah"},
    # Syrian Opposition / al-Qaeda
    {name: "Free Syrian Army"},
    {name: "Islamic Front"},
    {name: "Army of Mujahedeen"},
    {name: "Jaish al-Sham"},
    {name: "Authenticity and Development Front"},
    {name: "Harakat Nour al-Din al-Zenki"},
    {name: "Fastaqim Kama Umirt"},
    {name: "Ajnad al-Sham Islamic Union"},
    {name: "Sham Legion"},
    {name: "Jabhad Ansar al-Islam"},
    # Kurds
    {name: "People's Protection Units"},
    {name: "Asayish"},
    {name: "Self-Defense Forces (HXP)"},
    {name: "Syriac Military Council (MFS)"},
    {name: "Sutoro"},
    {name: "Kurdisan Workers' Party"},
    {name: "Al-Sanadid Forces"},
    {name: "International Freedom Battalion"},
    {name: "TKP-Kivilcim"},
    {name: "Yekiti Party"},
    {name: "Sharabiyya tribe"},
    {name: "Zubayd tribe militias"},
    {name: "Kabour Guards"},
    {name: "Sinjar Resistance Units"},
    {name: "Peshmerga (Iraqi Kurdistan)"},
    # ISIL / ISIS
    {name: "ISIL"},
    {name: "Yarmouk Martyrs Brigade"},
    {name: "Jaysh al-Jihad"} ])
strikes = Strike.create([
    {country_id: 4, target_id: 58, airstrike: true, date: "November 15, 2015", time: "22:00", area: "Raqqa"}
    ])
relations = Relation.create([
    {}
    ])
