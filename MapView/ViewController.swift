//
//  ViewController.swift
//  MapView
//
//  Created by Eden Mekonnen on 6/8/16.
//  Copyright © 2016 Eden Mekonnen. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    var SpotList = [Spot] ()
    
    @IBOutlet var MapView: MKMapView!
    
    @IBOutlet var TableView: UITableView!

    
    @IBOutlet var TableViewCell: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.SpotList = Spot.spotList()
        
        setupMapView()
    //    setupTableView()
    }
    
    
    
    


    func setupMapView() {
       self.MapView.mapType = .Hybrid
        self.MapView.showsBuildings = true
//        self.MapView.addAnnotations(self.spotList: as!)
    }

//    func setupTableView() {
//            self.dataSource = self
//            self.tableViewdelegate = self
//        
//    }
    
}
    



