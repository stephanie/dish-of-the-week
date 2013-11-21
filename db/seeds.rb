restaurants = Restaurant.create([
    {
        name: "Kau Kee",
        location: "21 Gough Street, Central",
        phone: 28505967,
        cuisine_type: "Chinese",
        price_range: "Below $40",
    },
    {
        name: "22 Ships",
        location: "22 Ship Street, Wan Chai",
        phone: 25550722,
        cuisine_type: "Spanish",
        price_range: "$151-$300",
        menu_url: "http://www.22ships.hk/menu",
    }

])

dishes = Dish.create([
    {
        dish_name: "Beef Brisket Noodles",
        dish_description: "A steaming bowl of...",
        price: "Below $40",
        blog_link: "http://thedimsumdiaries.com/2012/08/20/kau-kee-hong-kon/",  
        restaurant: restaurants[0]
    },
    {
        dish_name: "Chargrilled Iberico pork and foie gras burgers",
        dish_description: "Two of the best mini burgers in Hong Kong...",
        price: "$158",
        blog_link: "http://thedimsumdiaries.com/2013/02/04/22-ships/",          
        restaurant: restaurants[1]
    }

])