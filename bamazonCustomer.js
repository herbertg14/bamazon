var mysql = require('mysql');
var inquirer = require('inquirer');

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root", 
    password: "2SANSALVA", 
    database: "bamazon"
})

connection.connect(function(err) {
    if (err) throw err;
	console.log("connected as id " + connection.threadId);
	console.log();
	display();
	start();

})

var display = function(){
	connection.query("SELECT * FROM products", function(error,results){
		if (error) throw (error);
		for (var i = 0; i < results.length; i++){
			console.log("ID: " + results[i].ItemID + " || Name: " + results[i].ProductName + " || Price: $" + results[i].Price + " || Stock: " + results[i].StockQuantity);
		}
	})
}



var start = function() {
    connection.query("SELECT * FROM products", function(err, res) {
        inquirer.prompt({
            name: "ID",
            type: "input",
            message: "Enter the ID of the item you would like to purchase:"
        }).then(function(answer1) {
			if(answer1.ID > res.length){
				console.log("Incorrect ID.");
				connection.end();
			}
            for (var i = 0; i < res.length; i++) {
                if (res[i].ItemID == parseInt(answer1.ID)) {
                    var chosenItem = res[i];
                    inquirer.prompt({
                        name: "amount",
                        type: "input",
                        message: "How many would you like to purchase?"
                    }).then(function(answer) {
               
                        if (chosenItem.StockQuantity > parseInt(answer.amount)) {
                        	var amountLeft = chosenItem.StockQuantity - parseInt(answer.amount);
                    
                            connection.query("UPDATE products SET ? WHERE ?", [{
                                StockQuantity : amountLeft
                            }, {
                                ItemID: chosenItem.ItemID
                            }], function(err, res) {
                            	console.log();
                                console.log("Purchase made succesfully!");
                                display();
                                connection.end();    
                            });
                        } else {
                            console.log("Wrong amount. Try again...");
                            connection.end();
                            
                        }
                    })
                }
            }
        })
    })
}

