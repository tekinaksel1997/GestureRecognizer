//
//  ViewController.swift
//  GestureRecognizer Jest Algılayıcılar
//
//  Created by Tekin Aksel Demir on 2.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageSunal: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    var isKemal = true
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageSunal.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageSunal.addGestureRecognizer(gestureRecognizer)
        
    }

    @objc func changePic() {
        
        if isKemal == true {
            imageSunal.image = UIImage(named: "kemalsunal2")
            myLabel.text = "Kemal Sunal"
            isKemal = false
        } else {
            imageSunal.image = UIImage(named: "kemalsunal")
            myLabel.text = "Saygıyla Anıyoruz..."
            isKemal = true
        }
    }

}

