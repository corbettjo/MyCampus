//
//  SearchViewController.swift
//  MyCampus
//
//  Created by Bahar Sheikhi on 11/15/16.
//  Copyright © 2016 HCI Dream Team. All rights reserved.
//

import UIKit

class SearchViewController: UITableViewController {
    
    @IBOutlet var tbleSearchResults: UITableView!
    //var model = demo.getModel()
    //var model = modelDemo
    var iconImages = [String]()
    var dataArray = [Event]()
    var filteredArray = [Event]()
    var shouldShowSearchResults = false
    var searchController = UISearchController(searchResultsController: nil)
    
    func loadListOfEvents() {
        dataArray = modelDemo.getEvents()
        iconImages = ["free", "clubs", "music", "video", "sports", "food", "performance", "fineArts", "community"]
        
        tbleSearchResults.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tbleSearchResults.delegate = self
        tbleSearchResults.dataSource = self
        loadListOfEvents()
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = false
        definesPresentationContext = true
        tbleSearchResults.tableHeaderView = searchController.searchBar
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //    override func prepareForSegue(_:sender:) {
    //        let event: Event
    //        if searchController.isActive && searchController.searchBar.text != "" {
    //            candy = filteredCandies[indexPath.row]
    //        } else {
    //            candy = candies[indexPath.row]
    //        }
    //    }
    
    // MARK: UITableView Delegate and Datasource functions
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func filterContentForSearchText(searchText: String, scope: String = "All") {
        filteredArray = dataArray.filter { event in
            return (event.name.lowercased().range(of: searchText.lowercased()) != nil)
        }
        
        tbleSearchResults.reloadData()
    }
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        if searchController.isActive && searchController.searchBar.text != "" {
            return filteredArray.count
        }
        return dataArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventTableViewCell", for: indexPath) as! EventTableViewCell
        let event: Event
        if searchController.isActive && searchController.searchBar.text != "" {
            event = filteredArray[indexPath.row]
        } else {
            event = dataArray[indexPath.row]
        }
        
        let image = UIImage(named: event.icon[0])
        let index1 = event.month.index(event.month.startIndex, offsetBy: 3)
        
        
        cell.nameLabel.text = event.name
        cell.monthLabel.text = event.month.substring(to: index1)
        cell.dayLabel.text = String(event.day)
        cell.priceLabel.text = event.price
        cell.iconImageView.image = image
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let event: Event
        if searchController.isActive && searchController.searchBar.text != "" {
            event = filteredArray[indexPath.row]
        } else {
            event = dataArray[indexPath.row]
        }
        
        selectedEvent = event
    }
    
    
    func configureSearchController() {
        searchController = UISearchController(searchResultsController: nil)
    }
    
}

extension SearchViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchText: searchController.searchBar.text!)
    }
}
