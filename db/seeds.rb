restaurants = Restaurant.create([
    {
        name: "Kau Kee",
        location: "21 Gough Street, Central",
        phone: 28505967,
        cuisine_type: "Chinese",
        price_range: "Below $40",
        submission_number: 1,
    },
    {
        name: "22 Ships",
        location: "22 Ship Street, Wan Chai",
        phone: 25550722,
        cuisine_type: "Spanish",
        price_range: "$151-$300",
        menu: "http://www.22ships.hk/menu",
        submission_number: 1,
    }

])

dishes = Dish.create([
    {
        dish_name: "Beef Brisket Noodles",
        dish_description: "A steaming bowl of ",
        price: "Below $40",
        blog_link: "",  
        restaurant: restaurants[0]
    },
    {
        author: "Chargrilled Iberico pork and foie gras burgers",
        dish_description: "",
        price: "$158",
        blog_link: "",          
        restaurant: restaurants[1]
    }

])