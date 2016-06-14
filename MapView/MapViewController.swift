//
//  MapViewController.swift
//  iXplore
//
//  Created by Eden Mekonnen on 6/14/16.
//  Copyright © 2016 Eden Mekonnen. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
   
    @IBOutlet var mapView: MKMapView!
    @IBOutlet var tableView: UITableView!
    
    var spotList = [Spot]()
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
    // Do any additional setup after loading the view, typically from a nib
    self.spotList = Spot.spotList()
    setupMapView()
    setupTableView()
    }
    func setupMapView() {
        self.mapView.mapType = .Hybrid
        self.mapView.showsBuildings = true
        self.mapView.addAnnotations(self.spotList)
        
    }
    
    func setupTableView() {
        self.tableView.registerClass(SpotTableViewCell.self, forCellReuseIdentifier: "spotTableViewCell")
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
         let cellIdentifier = "spotTableViewCell"
         let cell = tableView.dequeueReusableCellWithIdentifier("spotTableViewCell", forIndexPath: indexPath)
        return cell
        
        let spotList = tableView.dequeueReusableCellWithIdentifier("spotTableViewCell", forIndexPath: indexPath)
        return spotList
        
        let mapCenterCoordinateAfterMove = CLLocationCoordinate2D(latitude: self.spotList[indexPath.row].coordinate.latitude,longitude: self.spotList[indexPath.row].coordinate.longitude)
        let adjustedRegion = mapView.regionThatFits(MKCoordinateRegionMake(mapCenterCoordinateAfterMove,
            MKCoordinateSpanMake(0.01, 0.01)))
        mapView.setRegion(adjustedRegion, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}