//
//  ViewController.swift
//  MyCampus
//
//  Created by Jonathan Corbett on 10/31/16.
//  Copyright © 2016 HCI Dream Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let appleProducts = ["Music", "Free", "Club", "Fitness", "Community"]
    
    let imageArray = [UIImage(named: "music"), UIImage(named: "muisc-1"), UIImage(named: "free-sign"), UIImage(named: "msuic-3")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //println("I can't wait to push this project to gitHub")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.appleProducts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
         let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath)
            as! CollectionViewCell
        
        cell.imageView?.image = self.imageArray[indexPath.row]
        
        cell.titleLabel?.text = self.appleProducts[indexPath.row]
    
        return cell
    }

    
    func collectionView(collectionView: UICollectionView, didSelectItemAt indexPath: NSIndexPath) {
        self.performSegue(withIdentifier: "showImage", sender: self)
    }

//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showImage" {
           
            
            let indexPaths = self.collectionView!.indexPathsForSelectedItems()!
            let indexPath = indexPaths[0] as NSIndexPath
            
            let vc = segue.destination as! NewViewController
            
            vc.image = self.imageArray[indexPath.row]!
            vc.title = self.appleProducts[indexPath.row]
            
        }
    }

}
