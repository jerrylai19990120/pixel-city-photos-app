//
//  PopVC.swift
//  Pixel City
//
//  Created by Jerry Lai on 2021-02-01.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var popImgView: UIImageView!
    
    var passedImage: UIImage!
    
    func initData(image: UIImage){
        self.passedImage = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImgView.image = passedImage
        // Do any additional setup after loading the view.
        addDoubleTap()
    }
    
    func addDoubleTap(){
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
        
    }
    
    @objc func handleTap(){
        dismiss(animated: true, completion: nil)
    }

}
