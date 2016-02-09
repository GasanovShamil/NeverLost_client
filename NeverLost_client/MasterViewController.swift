//
//  MasterViewController.swift
//  NeverLost_client
//
//  Created by El hadj on 05/02/2016.
//  Copyright © 2016 com.dant. All rights reserved.
//

import UIKit
import CoreData
import GoogleMaps

class MasterViewController: UITableViewController, NSFetchedResultsControllerDelegate {
    
    var detailViewController: DetailViewController? = nil
    var managedObjectContext: NSManagedObjectContext? = nil
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let camera = GMSCameraPosition.cameraWithLatitude(48.8534100,
            longitude: 2.3488000, zoom: 15)
        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        self.view = mapView
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2DMake(48.8534100, 2.3488000)
        marker.title = "Paris"
        marker.snippet = "France"
        marker.map = mapView
        
    }
}

/*
// Implementing the above methods to update the table view in response to individual changes may have performance implications if a large number of changes are made simultaneously. If this proves to be an issue, you can instead just implement controllerDidChangeContent: which notifies the delegate that all section and object changes have been processed.

func controllerDidChangeContent(controller: NSFetchedResultsController) {
// In the simplest, most efficient, case, reload the table view.
self.tableView.reloadData()
}
*/

