restaurants = Restaurant.create([
    {
        name: "Kau Kee",
        address: "21 Gough Street, Central",
        tel: 28505967,
        cuisine_type: "Chinese",
        price_range: "Below $40",
    },
    {
        name: "22 Ships",
        address: "22 Ship Street, Wan Chai",
        tel: 25550722,
        cuisine_type: "Spanish",
        price_range: "$151-$300",
    },
    {
        name: "Coast",
        address: "1/F Kinwick Centre, 32-36 Hollywood Road, SOHO, Central",
        tel: 25445888,
        cuisine_type: "Australian",
        price_range: "$101-$150",
    },
    {
        name: "Taco Chaca",
        address: "Sai Ying Pun",
        tel: 25445888,
        cuisine_type: "Mexican",
        price_range: "$41-$100",
    }

])

curated_posts = CuratedPost.create([
    {
        dish_name: "Beef Brisket Noodles",
        dish_description: "A steaming bowl of...",
        price: "Below $40",
        blog_link: "http://thedimsumdiaries.com/2012/08/20/kau-kee-hong-kon/",  
        published_on: "November 22nd, 2013",
        up_vote: 100,
        down_vote: 25,
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
submissions = Submission.create([
    {
        dish_name: "Grass-fed South Australian Tenderloin",
        dish_description: "Sourced from the finest regions in Australia, this steak is Charles' favorite hunk of meat in Hong Kong.",
        price: "$220",
        blog_link: "http://www.timeout.com.hk/restaurants-bars/features/29860/coast.html",  
        is_accepted: false,
        restaurant: restaurants[2],
        full_name: "Charles Munat",
    },
    {
        dish_name: "Beef Tacos",
        dish_description: "Homemade corn tortillas, mmm.",
        price: "$45",
        is_accepted: false,
        restaurant: restaurants[3],
        full_name: "Test User"
    },
    {
        dish_name: "Beef short rib, pickled carrots, baby onions",
        price: "$158",
        blog_link: "http://thedimsumdiaries.com/2013/02/04/22-ships/",          
        restaurant: restaurants[1],
        is_accepted: true,
        full_name: "Test User"

    }

])
