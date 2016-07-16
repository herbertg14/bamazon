var mysql = require('mysql');
var inquirer = require('inquirer');

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root", //Your username
    password: "2SANSALVA", //Your password
    database: "bamazon"
})

connection.connect(function(err) {
    if (err) throw err;
	console.log("connected as id " + connection.threadId);
	display();
	start();
	connection.end();

    // start();
})

var display = function(){
	connection.query("SELECT * FROM products", function(error,results){
		if (error) throw (error);
		for (var i = 0; i < results.length; i++){
			console.log("ID: " + results[i].ItemID + " || Name: " + results[i].ProductName + " || Price: $" + results[i].Price + " || Stock: " + results[i].StockQuantity);
		}
	})
}


var start = function(){
	connection.query("SELECT * FROM products", function(err, res){
			inquirer.prompt({
			name: "ID",
			type: "input",
			message: "Enter the ID of the item you would like to purchase:"
		}).then(function(answer1){
			if(answer1.ID > res.length){
				console.log("Incorrect ID.");
			}
			else{
				for (var i = 0; i < res.length; i++){
					if (res[i].ItemID == parseInt(answer1.ID)){
						var chosenItem = res[i];
					}
				}
				// var idChosen = answer1.ID;
				// inquirer.prompt({
				// 	name: "amount",
				// 	type: "input",
				// 	message: "How many would you like to purchase?"
				// }).then(function(answer2){
					 
				// })
			}
		})
	})
}


