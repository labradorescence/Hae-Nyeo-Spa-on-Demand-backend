# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Treatment.create([
    {
        title: "MANI PEDI", 
        price: 60, 
        duration: "90 min", 
        description: "Organic, cruelty-free and vegan mani-pedi includes nail filing, shaping and buffing, cuticle work, foot scrub, removal of most rough skin, an application of hydrating lotion and is finished off with an organic polish in the color of your choice.", 

        image: "https://i.ibb.co/hYPb9jv/phmanipedi.png",
        video: "https://www.zikoko.com/wp-content/uploads/zikoko/2020/04/waxing-gif-1.gif",
        lat: 40.69547691646669,
        lng: -73.9829402438478
    },
    {
        title: "MANICURE", 
        price: 30, 
        duration: "45 min", 
        description: "A breathable and organic polish for long wear and high shine. The treatment includes nail filing, shaping and buffing, cuticle work and a polish in the color of your own choice. It is then finished off with an application of hydrating lotion.", 
        image: "https://i.ibb.co/bvgd8sj/phmanicure.jpg",
        video: "https://media1.tenor.com/images/05acabfd0249e1ae10f5e1e7a81cb946/tenor.gif",
        lat: 44.69547691646669,
        lng: -77.9829402438478
    },
    {
        title: "PEDICURE", 
        price: 45, 
        duration: "60 min", 
        description: "Our pedicure include nail filing, shaping and buffing, cuticle work and an application of hydrating lotion. Your Salonette will then apply one of Nailberry’s breathable polishes in the colour of your choice. Please note that the duration does not include drying time. Does not include gel removal.", 
        image: "https://i.ibb.co/LSy22fG/phpedi.jpg",
        video: "https://media1.tenor.com/images/05acabfd0249e1ae10f5e1e7a81cb946/tenor.gif",
        lat: 44.69547691646669,
        lng: -77.9829402438478
    },
    {
        title: "MASSAGES", 
        price: 48, 
        duration: "30 min", 
        description: "A deep and relaxing massage which concentrates on tension areas and aims to relieve pain, while helping your mind and body feel at ease.", 
        image: "https://i.ibb.co/gtxXcrY/phmassage.jpg",
        video: "https://media1.tenor.com/images/05acabfd0249e1ae10f5e1e7a81cb946/tenor.gif",
        lat: 44.69547691646669,
        lng: -77.9829402438478
    },
    {
        title: "WAXING", 
        price: 45, 
        duration: "50 min", 
        description: "A step up from the Bikini wax, our Brazilian wax removes all the hair from your intimate area from front to back, leaving only a landing strip. The shape of the remaining strip at the front is typically rectangular, though it’s fully up to you.", 
        image: "https://i.ibb.co/vLxtqW6/phwaxing.jpg",
        video: "https://media1.tenor.com/images/05acabfd0249e1ae10f5e1e7a81cb946/tenor.gif",
        lat: 44.69547691646669,
        lng: -77.9829402438478
    },
    {
        title: "THREADING", 
        price: 18, 
        duration: "15 min", 
        description: "Our eyebrow threading is an ancient hair-removal technique, practiced for centuries among the most women of Asia and the Middle East. It is the best alternative to waxing and tweezing, especially for sensitive skin. Unlike waxing, threading does not remove a layer of skin, which can leave the skin on your face susceptible to sun damage. By far the least invasive method of facial hair removal, this method creates a graceful brow with clean, well-defined edges that frame the eye.", 
        image: "https://i.ibb.co/QpdVVp0/phthreading.jpg",
        video: "https://media1.tenor.com/images/05acabfd0249e1ae10f5e1e7a81cb946/tenor.gif",
        lat: 44.69547691646669,
        lng: -77.9829402438478
    }
]
)

User.create([{
    name: "Alexandria Ocasio-Cortez",
    email: "email@email.com",
    address: "493 Manhattan Ave Brooklyn NY 11222",
    phone: "829-242-4423",
    gender: "Non confirming",
    birthday: "October 13th 1989",
    new_client: true,
    note: "Ocasio-Cortez was born into a Catholic family in the Bronx borough of New York City on October 13, 1989, the daughter of Blanca Ocasio-Cortez (née Cortez) and Sergio Ocasio. ... Her father was born in the Bronx to a Puerto Rican family and became an architect; her mother was born in Puerto Rico."
}])

Appointment.create([
    {
    address: "74-09 37th Ave office 305, Jackson Heights, NY 11372",
    time: "3:30 pm",
    user_id: 1,
    treatment_id: 1    
},
{
    address: "74-09 37th Ave office 305, Jackson Heights, NY 11372",
    time: "3:30 pm",
    user_id: 1,
    treatment_id: 1    
},
{
    address: "74-09 37th Ave office 305, Jackson Heights, NY 11372",
    time: "3:30 pm",
    user_id: 1,
    treatment_id: 1    
},
{
    address: "74-09 37th Ave office 305, Jackson Heights, NY 11372",
    time: "3:30 pm",
    user_id: 1,
    treatment_id: 1    
}
])

p "hell yeah, it got seeded!!!"