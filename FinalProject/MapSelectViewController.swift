//
//  MapSelectViewController.swift
//  FinalProject
//
//  Created by Seungheon Chang on 2017. 6. 6..
//  Copyright © 2017년 Min-yeong An. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class MapSelectViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    private let locationManager = CLLocationManager()
    private var previousPoint: CLLocation?
    private var totalMovementDistance = CLLocationDistance(0)
    private let annotation = MKPointAnnotation()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        
        let region = MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2D(latitude: 34.669086, longitude: 135.500342), 5000, 5000)
        mapView.setRegion(region, animated: true)
        
        let osakacastle = Place(title: "오사카 성", subtitle: "+81 6-6941-3044", coordinate: CLLocationCoordinate2D(latitude: 34.687244, longitude: 135.525868))
        let dotonboribridge = Place(title: "도톤보리 다리", subtitle: "", coordinate: CLLocationCoordinate2D(latitude: 34.669086, longitude: 135.500342))
        let univstdjp = Place(title: "유니버셜 스튜디오 재팬", subtitle: "+81 570-200-606", coordinate: CLLocationCoordinate2D(latitude: 34.665610, longitude: 135.432349))
        let narapark = Place(title: "나라 공원(사슴공원)", subtitle: "+81 742-22-0375", coordinate: CLLocationCoordinate2D(latitude: 34.685157, longitude: 135.842958))
        let heayoukwan = Place(title: "해유관", subtitle: "+81 6-6576-5501", coordinate: CLLocationCoordinate2D(latitude: 34.654505, longitude: 135.429045))
        let housingmu = Place(title: "주택 박물관", subtitle: "+81 6-6242-1170", coordinate: CLLocationCoordinate2D(latitude: 34.710387, longitude: 135.511766))
        let umeda = Place(title: "우메다 공중정원", subtitle: "+81 6-6440-3855", coordinate: CLLocationCoordinate2D(latitude: 34.705260, longitude: 135.490597))
        let tempozan = Place(title: "덴포잔 대관람차", subtitle: "+81 6-6576-6222", coordinate: CLLocationCoordinate2D(latitude: 34.656244, longitude: 135.431119))
        let hepfive = Place(title: "헵 파이브(HEP FIVE)", subtitle: "+81 6-6313-0501", coordinate: CLLocationCoordinate2D(latitude: 34.704088, longitude: 135.500436))
        
        mapView.addAnnotation(narapark)
        mapView.addAnnotation(univstdjp)
        mapView.addAnnotation(dotonboribridge)
        mapView.addAnnotation(osakacastle)
        mapView.addAnnotation(heayoukwan)
        mapView.addAnnotation(housingmu)
        mapView.addAnnotation(umeda)
        mapView.addAnnotation(tempozan)
        mapView.addAnnotation(hepfive)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        print("Authorization status changed to \(status.rawValue)")
        
        switch status {
        case .authorizedAlways, .authorizedWhenInUse:
            locationManager.startUpdatingLocation()
            mapView.showsUserLocation = true
        default:
            locationManager.startUpdatingLocation()
            mapView.showsUserLocation = false
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        let errorType = error._code == CLError.denied.rawValue ? "Access Denied" : "Error \(error._code)"
        let alertController = UIAlertController(title: "Location Manager Error", message: errorType, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel, handler: {action in})
        
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let newLocation = locations.last{
            
            if newLocation.horizontalAccuracy < 0{
                return
            }
            
            if newLocation.horizontalAccuracy > 100 || newLocation.verticalAccuracy > 50{
                return
            }
            
            if previousPoint == nil{
                totalMovementDistance = 0
                
                let start = Place(title: "Start Point", subtitle: "This is where we started", coordinate: newLocation.coordinate)
                mapView.addAnnotation(start)
            }
            
            previousPoint = newLocation
        }
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
