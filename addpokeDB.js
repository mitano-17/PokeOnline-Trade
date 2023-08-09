


app.post('/post.html', (req, res){
    const trainer = req.body.full_name
    const poke_name = req.body.pokemon_name;
    const type1 = req.body.pokemon_type_1;
    const type2 = req.body.pokemon_type_2;
    const poke_species = req.body.pokemon_species;
    const poke_ability = req.body.pokemon_abilities;
    const poke_gender = req.body.pokemon_gender;
    const level = req.body.pokemon_level;
    var sql="SELECT * FROM ask WHERE pname='"+poke_name+"';";
          console.log(sql);
          connection.query(sql, function (err, result) {
            console.log("Result: "+JSON.stringify(result));
          if(result=="" ||result===undefined)
          {
            //placeholder id status and granter
            var sql1 = "INSERT INTO ask (id, pname, ptype1, ptype2, plevel, ability, species, gender, requester, status, granter) VALUES ('" +1+"','"+poke_name+"','"+type1+"','"+type2+"','"+level+"','"+poke_ability+"','"+poke_species+"','"+poke_gender+"','"+trainer+"','"+'accept'+"','"+'Palm'+"');";
            connection.query(sql, function (err, result) {
            if (err)
                throw err;
                console.log("1 Pokemon added, thank you for using PokeOnline");
            });
          }
          else{
            console.log("The pokemon already exists!");}
   
          })
    
   
    
});