//
//  EventViewController.swift
//  MyCampus
//
//  Created by Noah Appleby on 11/13/16.
//  Copyright © 2016 HCI Dream Team. All rights reserved.
//

import UIKit

class EventViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var goingButton: UIButton!
    
    var event: Event!

    override func viewDidLoad() {
        super.viewDidLoad();
        self.title = "Event";
        self.event = selectedEvent;
    
        
        //let event = modelDemo.getEvents()
        
        nameLabel.text = event.name;
        monthLabel.text = event.month;
        dayLabel.text = String(event.day);
        timeLabel.text = event.time;
        locationLabel.text = event.location;
        priceLabel.text = event.price;
        
        if(self.event.going) {
            goingButton.setTitle("Cancel", for: .normal)
        }
        else {
            goingButton.setTitle("Mark as Going", for: .normal)
        }
        

        
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
    @IBAction func goingAction(_ sender: Any) {
        modelDemo.goingTo(goEvent: self.event)
        if(self.event.going) {
            goingButton.setTitle("Cancel", for: .normal)
        }
        else {
            goingButton.setTitle("Mark as Going", for: .normal)
        }
        
    }

 }
