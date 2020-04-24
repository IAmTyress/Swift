//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Мас on 01.04.2020.
//  Copyright © 2020 Мас. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {

    var meals: [Meal] {
        let eggs = Food(name: "Eggs", description: "Nice breakfast 5 minutes boiled eggs")
        let tea = Food(name: "Tea", description: "English tea")
        let sausage = Food(name: "Sausage", description: "Good sausage")
        let foodBreakfast: [Food] = [eggs, tea, sausage]
        let breakfast = Meal(name: "Breakfast", food: foodBreakfast)
        
        let soup = Food(name: "Soup", description: "Delicious soup")
        let bread = Food(name: "Bread", description: "White bread")
        let chicken = Food(name: "Chicken", description: "Fried chicken")
        let foodLunch: [Food] = [soup, bread, chicken]
        let lunch = Meal(name: "Lunch", food: foodLunch)
        
        let pie = Food(name: "Pie", description: "Insane meet pie")
        let potatoes = Food(name: "Potatoes", description: "Boiled potatoes")
        let fruit = Food(name: "Fruit", description: "Perfect fruit")
        let foodDinner = [pie, potatoes, fruit]
        let dinner = Meal(name: "Dinner", food: foodDinner)
        
        return [breakfast, lunch, dinner]
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals[section].food.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        let food = meals[indexPath.section].food[indexPath.row]
        
        cell.textLabel?.text = "\(food.name)"
        cell.detailTextLabel?.text = "\(food.description)"

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
