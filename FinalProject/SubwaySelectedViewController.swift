//
//  SubwaySelectedViewController.swift
//  FinalProject
//
//  Created by Seungheon Chang on 2017. 6. 7..
//  Copyright © 2017년 Min-yeong An. All rights reserved.
//

import UIKit

class SubwaySelectedViewController: UIViewController, UIGestureRecognizerDelegate {
    
    private var imageView: UIImageView!
    private var scale = CGFloat(1)
    private var previousScale = CGFloat(1)
    private var translate = CGPoint(x: 0, y: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let image = UIImage(named: "subwaymap")
        imageView = UIImageView(image: image)
        imageView.isUserInteractionEnabled = true
        imageView.center = view.center
        view.addSubview(imageView)
        
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(SubwaySelectedViewController.doPinch(_:)))
        pinchGesture.delegate = self
        imageView.addGestureRecognizer(pinchGesture)
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(SubwaySelectedViewController.doTranslate(_:)))
        panGesture.delegate = self
        imageView.addGestureRecognizer(panGesture)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
    func transformImageView(){
        var t = CGAffineTransform(scaleX: scale * previousScale, y: scale * previousScale)
        t = t.translatedBy(x: translate.x, y: translate.y)
        imageView.transform = t
    }
    func doPinch(_ gesture: UIPinchGestureRecognizer){
        scale = gesture.scale
        transformImageView()
        if gesture.state == .ended{
            previousScale = scale * previousScale
            scale = 1
        }
    }
    func doTranslate(_ gesture: UIPanGestureRecognizer){
        translate = gesture.translation(in: self.view)
        transformImageView()
        if gesture.state == .ended{
            translate.x = 0
            translate.y = 0
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
