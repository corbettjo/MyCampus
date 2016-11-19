//
//  MyCampusModel.swift
//  MyCampus
//
//  Created by Bahar Sheikhi on 11/16/16.
//  Copyright © 2016 HCI Dream Team. All rights reserved.
//

import Foundation

var modelDemo = MyCamusModel();
var selectedEvent = Event(name: "NIL VERSION: Carseat Headrest", photo: "carseat", price: "$7.00", day: 23, month: "November", description: "Come hear this American indie rock band originally from Leesburg, Virginia. They are currently based out of Seattle, Washington.", location: "AfterHours", time: "7:00pm", icon: "concert")

class MyCamusModel {
    //MARK: Properties 
    var events = [Event]()
    var going = [Event]()
    
    let carseatHeadrest = Event(name: "Carseat Headrest", photo: "carseat", price: "$7.00", day: 23, month: "November", description: "Come hear this American indie rock band originally from Leesburg, Virginia. They are currently based out of Seattle, Washington.", location: "AfterHours", time: "7:00pm", icon: "concert")
    
     let csa = Event(name: "Chinese Student Association Info Session", photo: "csa", price:"free!", day: 25, month:"November", description:"Come meet the members of our club and learn about our events.", location:"Curry Student Center", time:"6:00pm", icon:"talk")
    
     let hockeyBU = Event(name: "NU Hockey vs BU", photo: "hockey", price:"free for students!", day: 29, month:"October", description:"Come join your fellow huckies root against the Terrires in the dog house! It'll be paws-itively awesome! :-)", location:"Matthew's Arena", time:"7:00pm", icon:"sport")
    
    
    init() {
        events.append(carseatHeadrest)
        events.append(csa)
        events.append(hockeyBU)
    }
    
    public func getEvents() -> [Event] {
        return events
    }
    
    public func getGoing() -> [Event] {
        return going
    }
    
    public func goingTo(goEvent: Event) -> Void {
        goEvent.going = !goEvent.going;
        if(goEvent.going) {
            going.append(goEvent)
            print(going)
        }
        else {
            let indexRemove = going.index(of: goEvent);
            going.remove(at: indexRemove!); }
    }
}
