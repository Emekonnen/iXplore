//
//  Spot.swift
//  MapView
//
//  Created by Eden Mekonnen on 6/8/16.
//  Copyright © 2016 Eden Mekonnen. All rights reserved.
//

import Foundation
import MapKit

class Spot: NSObject, MKAnnotation {
    var title:String? = "spot"
    var coordinate:CLLocationCoordinate2D = CLLocationCoordinate2D()
    var logoURL:String? = "URL"
    var ratable: Bool = true 
    
    class func spotList() -> [Spot] {
        
        let spot = Spot ()
        spot.title = "Workshop 17"
        spot.logoURL = "https://avatars1.githubusercontent.com/u/7220596?v=3&s=200"
        spot.coordinate = CLLocationCoordinate2D(latitude: -33.906764,longitude: 18.4164983)
        
        let spot2 = Spot ()
        spot2.title = "Truth Coffee"
        spot2.ratable = false
        spot2.logoURL = "https://robohash.org/123.png"
        spot2.coordinate = CLLocationCoordinate2D(latitude: -33.9281976,longitude: 18.4227045)
        
        let spot3 = Spot ()
        spot3.title = "Chop Chop Coffee"
        spot3.ratable = true
        spot3.logoURL = "http://cdn3.ixperience.co.za/assets/icons/interview-step-2-801f63110f89e85e38f27d39f5864a1399f256fe0684844caea2a18c4b6fbd33.svg"
        spot3.coordinate = CLLocationCoordinate2D(latitude: -33.9271879,longitude: 18.4327055)
        
        return [spot,spot2, spot3]
    }
}
    


