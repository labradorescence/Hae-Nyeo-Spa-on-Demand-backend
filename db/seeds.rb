# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Treatment.create([
    {
        title: "waxing", 
        price: 25, 
        duration: "30 min", 
        description: "painful, but good for you", 
        image: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F14%2F2020%2F04%2F03%2F040620-home-waxing-lead-2000.jpg",
        video: "https://www.zikoko.com/wp-content/uploads/zikoko/2020/04/waxing-gif-1.gif",
        lat: 40.69547691646669,
        lng: -73.9829402438478
    },
    {
        title: "manicure", 
        price: 32, 
        duration: "60 min", 
        description: "get them claws", 
        image: "https://media.allure.com/photos/5e93814f2fba3e0008e34228/16:9/w_2656,h_1494,c_limit/dip-nails-lede.jpg",
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
    treatment_id: 2    
}
])

p "hell yeah, it got seeded!!!"