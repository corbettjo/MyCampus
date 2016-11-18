//
//  Event.swift
//  MyCampus
//
//  Created by Bahar Sheikhi on 11/13/16.
//  Copyright © 2016 HCI Dream Team. All rights reserved.
//

import UIKit

class Event {
    //MARK: Properties 
    var name: String
    var photo: String //UIImage
    var price: String //double
    var day: Int
    var month: String
    var description: String
    var location: String
    var time: String
    var icon = [String]()
    
    //MARK: Initilization
    init(name: String, photo: String, price: String, day: Int, month: String, description: String, location: String, time: String, icon: [String]) {
        //Initialize stored properties 
        self.name = name;
        self.photo = photo;
        self.price = price;
        self.day = day;
        self.month = month;
        self.description = description;
        self.location = location;
        self.time = time;
        self.icon = icon;
    }
}
