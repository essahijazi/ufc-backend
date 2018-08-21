# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


reponse = RestClient.get('http://ufc-data-api.ufc.com/api/v1/us/fighters')
jsonFighters = JSON.parse(reponse)


jsonFighters.each do |fighter|
    if fighter["first_name"] && fighter["last_name"] &&  
        fighter["wins"] && fighter["losses"] && fighter["weight_class"] && 
        fighter["fighter_status"] && fighter["thumbnail"]
        Fighter.create(
            first_name: fighter["first_name"],
            last_name: fighter["last_name"],
            wins: fighter["wins"],
            losses: fighter["losses"],
            weight_class: fighter["weight_class"],
            title_holder: fighter["title_holder"],
            fighter_status: fighter["fighter_status"],
            imgSrc: fighter["thumbnail"]
        )
    end
end