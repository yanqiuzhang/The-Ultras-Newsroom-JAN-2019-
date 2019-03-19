category_1 = Category.create(name: "Lifestyle")
category_2 = Category.create(name: "Breaking News")
category_3 = Category.create(name: "Politics")
category_4 = Category.create(name: "Health")
category_5 = Category.create(name: "Sport")

article_1 = Article.create(title: "Voted best mead recipe", lead: "Restaurant wins prize", content: "Maecenas faucibus mollis interdum. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean lacinia bibendum nulla sed consectetur. Sed posuere consectetur est at lobortis. Curabitur blandit tempus porttitor. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.

    Maecenas sed diam eget risus varius blandit sit amet non magna. Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.
    
    Nullam quis risus eget urna mollis ornare vel eu leo. Nulla vitae elit libero, a pharetra augue. Donec sed odio dui. Sed posuere consectetur est at lobortis. Curabitur blandit tempus porttitor.
    
    Sed posuere consectetur est at lobortis. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam quis risus eget urna mollis ornare vel eu leo. Nullam quis risus eget urna mollis ornare vel eu leo. Nulla vitae elit libero, a pharetra augue. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
    
    Maecenas faucibus mollis interdum. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean lacinia bibendum nulla sed consectetur. Sed posuere consectetur est at lobortis. Curabitur blandit tempus porttitor. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.
    
    Maecenas sed diam eget risus varius blandit sit amet non magna. Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.
    
    Nullam quis risus eget urna mollis ornare vel eu leo. Nulla vitae elit libero, a pharetra augue. Donec sed odio dui. Sed posuere consectetur est at lobortis. Curabitur blandit tempus porttitor.
    
    Sed posuere consectetur est at lobortis. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam quis risus eget urna mollis ornare vel eu leo. Nullam quis risus eget urna mollis ornare vel eu leo. Nulla vitae elit libero, a pharetra augue. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
    
    Maecenas faucibus mollis interdum. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean lacinia bibendum nulla sed consectetur. Sed posuere consectetur est at lobortis. Curabitur blandit tempus porttitor. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.")
article_2 = Article.create(title: "Ancient viking grave discovered", lead: "Kids came across sword", content: "Kids come across sword protruding from the earth")
article_3 = Article.create(title: "New Prime Minister", lead: "Today is a new day", content: "The country is on a better path")
article_4 = Article.create(title: "Drinking wine improves general health", lead: "Drink wine today!", content: "Studies show that wine is good for your heart")
article_5 = Article.create(title: "Hammarby! Hammarby!", lead: "Best team ever!", content: "Home is where the heart is")

article_1.categories << category_1
article_2.categories << category_2
article_3.categories << category_3
article_4.categories << category_4
article_5.categories << category_5