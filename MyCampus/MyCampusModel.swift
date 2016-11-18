//
//  MyCampusModel.swift
//  MyCampus
//
//  Created by Bahar Sheikhi on 11/16/16.
//  Copyright © 2016 HCI Dream Team. All rights reserved.
//

import Foundation

 var modelDemo = MyCampusModel();

class MyCampusModel {
    //MARK: Properties 
    var events = [Event]()
    var going = [Event]()
    
    let carseatHeadrest = Event(name: "Carseat Headrest", photo: "carseat", price: "$7.00", day: 23, month: "November", description: "Come hear this American indie rock band originally from Leesburg, Virginia. They are currently based out of Seattle, Washington.", location: "AfterHours", time: "6:30pm", icon: "music")
    
    let csa = Event(name: "Chinese Student Association Info Session", photo: "csa", price:"free!", day: 25, month:"November", description:"Come meet the members of our club and learn about our events.", location:"Curry Student Center", time:"6:00pm", icon:"talk")
    
    let hockeyBU = Event(name: "NU Hockey vs BU", photo: "hockey", price: "free for students!", day: 29, month:"October", description:"Come join your fellow huskies root against the Terriers in the Dog House! It'll be paws-itively awesome! :)", location:"Matthew's Arena", time:"7:00pm", icon:"sport")
    
    let hockeyUNH = Event(name: "NU Hockey vs UNH", photo: "hockey", price: "free for students!", day: 19, month:"November", description: "Come join your fellow huskies root agains the Wildcats in the Dog House! It'll be paws-itively awesome! :)", location: "Mathew's Arena", time: "7:00", icon:"sport")
    
    let carSeatTalk = Event(name: "The Importance of Car Seats", photo: "car", price: "free", day: 20, month: "November", description: "Come listen to Steven Levitt share his crucial surprising facts about car seats.", location: "Shillman 200", time: "5:00pm", icon: "talk")
    
    let pinegrove = Event(name: "Pinegrove and Mothers", photo: "pinegrove", price: "free for students!", day: 28, month: "November", description: "Come hear Pinegrove and Mothers co-headline in AfterHours brought to you by Green Line Records and Council for University Programs", location: "AfterHours", time: "6:30pm", icon: "music")
    
    let basketball = Event(name: "NU Basketball vs BU", photo: "basketball", price: "free for students!", day: 2, month: "February", description: "Come join your fellow huskies root agains the Wildcats in the Dog House! It'll be paws-itively awesome! :)", location: "Matthews Arena", time: "7:00pm", icon: "sport")
    
    let scout = Event(name: "Meet Scout", photo: "scout", price: "free for students!", day: 7, month: "February", description: "Interested in design and development? Meet the members of Scout!", location: "Ryder 375", time: "8:00", icon: "club")
    
    let volunteer = Event(name: "Volunteer with Northeastern", photo: "volunteer", price: "free", day: 12, month: "December", description: "Take a break from finals and volunteer during the Christmas season", location: "Centennial Quad", time: "8:00", icon: "community")
    
    let bbq = Event(name: "Computer Science Barbeque", photo: "volunteer", price: "free for students!", day: 20, month: "November", description: "Stop by Centennial Quad for a free barbeque before Thanksgiving break!", location: "Centennial Quad", time: "6:00", icon: "food")
    
    let romeo = Event(name: "Romeo and Juliet", photo: "romeo", price: "free for students!", day: 19, month: "November", description: "Stop by Centennial Quad for a free barbeque before Thanksgiving break!", location: "Ryder 340", time: "7:00", icon: "permormance")
    
    let midnight = Event(name: "Midnight Breakfast", photo: "midnight", price: "free for students!", day: 8, month: "December", description: "Take a break from finals and enjoy the annual Midnight Breakfast in Levine Marketplace", location: "Levine Marketplace", time: "10:00", icon: "free")
    
    let breakfast = Event(name: "Midnight Breakfast", photo: "midnight", price: "free for students!", day: 8, month: "December", description: "Take a break from finals and enjoy the annual Midnight Breakfast in Levine Marketplace", location: "Levine Marketplace", time: "10:00", icon: "food")
    
    let strange = Event(name: "Viewing of Doctor Strange", photo: "strange", price "free for students!", day: 22, month: "November", description: "Watch Doctor Strange in Centennial Quad", location: "Centennial Quad", time: "8:00", icon "video")
    

    
    
    init() {
        events.append(carseatHeadrest)
        events.append(csa)
        events.append(hockeyBU)
        events.append(hockeyUNH)
        events.append(carSeatTalk)
        events.append(pinegrove)
        events.append(basketball)
        events.append(scout)
        events.append(volunteer)
        events.append(bbq)
        events.append(romeo)
    }
    
    public func getEvents() -> [Event] {
        return events
    }
    
    public func goingTo(goEvent: Int) -> Void {
        going.append(events.remove(at: goEvent))
    }
    
    
}
