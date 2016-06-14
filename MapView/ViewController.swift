//
//  ViewController.swift
//  MapView
//
//  Created by Eden Mekonnen on 6/8/16.
//  Copyright © 2016 Eden Mekonnen. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var spotList = Spot.self
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

// Do any additional setup after loading the view, typically from a nib
    //self.spotList = Spot.spotList ()
        setupMapView()
        setupTableView()
    }
}
    func setupMapView() { 
      self.map
      self.MapView.showsBuildings = true
     // self.MapView.addAnnotations(self.spotList: as!)
    }

    func setupTableView() {
       self.TableView.delegate = self
       self.TableView.dataSource = self
       self.MapView.addAnnotations(self.spotList: as!)
        
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SpotTableViewCell", forIndexPath: indexPath)
        return cell
    }
    
    

