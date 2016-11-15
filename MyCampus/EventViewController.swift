//
//  EventViewController.swift
//  MyCampus
//
//  Created by Noah Appleby on 11/13/16.
//  Copyright © 2016 HCI Dream Team. All rights reserved.
//

import UIKit

class EventViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.title = "home";
        
        let event = Event(name: "Carseat Headrest", photo: "carseat", price: "$7.00", day: 23, month: "November", description: "Come hear this American indie rock band originally from Leesburg, Virginia. They are currently based out of Seattle, Washington.", location: "AfterHours", time: "7:00pm", icon: "concert");
        
        //
//        view.nameLabel.text = event.name;
//        view.monthLabel.text = event.month;
//        view.dayLabel.text = String(event.day);
//        view.timeLabel.text = event.time;
//        view.locationLabel.text = event.location;
//        view.priceLabel.text = event.price;
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
/*
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
     
           }
 */
    

}
