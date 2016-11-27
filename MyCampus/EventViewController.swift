//
//  EventViewController.swift
//  MyCampus
//
//  Created by Noah Appleby on 11/13/16.
//  Copyright © 2016 HCI Dream Team. All rights reserved.
//

import UIKit

class EventViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var goingButton: UIButton!
    
    
    var event: Event!
    var iconImages = [String]()

    override func viewDidLoad() {
        
        super.viewDidLoad();
        
        self.title = "Event";
        self.event = selectedEvent;
    
        nameLabel.text = event.name;
        dateLabel.text = event.month + " " + String(event.day)
        
        let end = event.day % 10
        
        if (end == 0 || end > 3) {
            dateLabel.text! += "th"
        }
        else if (end == 3) {
            dateLabel.text! += "rd"
        }
        else if (end == 2) {
            dateLabel.text! += "nd"
        }
        else {
            dateLabel.text! += "st"
        }
        timeLabel.text = event.time;
        locationLabel.text = event.location;
        priceLabel.text = event.price;
        descriptionLabel.text = event.description
        
        descriptionLabel.numberOfLines = 0
        descriptionLabel.sizeToFit()
        
        if(self.event.going) {
            goingButton.setTitle("Cancel", for: .normal)
        }
        else {
            goingButton.setTitle("Mark as Going", for: .normal)
        }
        
        iconImages = ["free", "clubs", "music", "video", "sports", "food", "performance", "fineArts", "community"]
        

        // Do any additional setup after loading the view.
        let image = UIImage(named: event.icon[0])
        imageView.image = image
        
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
