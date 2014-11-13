//
//  TableViewController.swift
//  TrySwift
//
//  Created by Charles Coutu-Nadeau on 11/12/14.
//  Copyright (c) 2014 churroslab. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    // private vs public . var (dynamic i.e. mutable) vs let (static)
    private var cities = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.buildCities()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.cities.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("prototypeCell", forIndexPath: indexPath) as UITableViewCell

        let cityForCell = self.cities[indexPath.row] as City
        cell.textLabel.text = cityForCell.name
        cell.detailTextLabel?.text = cityForCell.country

        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */
    
    func buildCities() {
        let montreal = City(name:"Montreal", country:"Canada")
        let newYork = City(name:"New York", country:"United States")
        let paris = City(name:"Paris", country:"France")
        let london = City(name:"London", country:"United Kingdom")
        let sanFran = City(name: "San Francisco", country: "United States")
        let moscow = City(name: "Moscow", country: "Russia")
        let shanghai = City(name: "Shanghai", country: "China")
        self.cities = [montreal, newYork, paris, london, sanFran, moscow, shanghai]
    }

}
