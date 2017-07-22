var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "Bubbacup50",
  database: "bamazonDB"
});

connection.connect(function(err) {
  if (err) throw err;
    console.log("connected as id " + connection.threadId + "\n");
  // run the start function after the connection is made to prompt the user
  start();
});

var start = function(){
	inquirer.prompt({
		name:"action",
		type:"list",
		message:"What Item ID of the product would you like to buy and how many?"
		choices: 
	}).then(function(answer){
		var query = "SELECT item_id, product_name, stock_quantity FROM bamazonDB WHERE ?";
		connection.query(query, {action:answer.action}, function(err, res){
			for (var i=0; i<res.length; i++){
				console.log("Item Id: "+res[i].item_id+"\nProduct Name: "+ res[i].product_name+"\nStock Quantity: "+res[I].stock_quantity+ "\n----------------\n");
		}
		//runSearch();
		})
	})
}