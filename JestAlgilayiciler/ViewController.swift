//
//  ViewController.swift
//  JestAlgilayiciler
//
//  Created by ertugrul on 22.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    var marked = true
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(haraket))
        image.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func haraket (){
        if marked == true{
            image.image = UIImage(named: "ankara")
            labelName.text = "Ankara"
            marked = false
        }else{
            image.image = UIImage(named: "istanbul")
            labelName.text = "İstanbul"
            marked = true
        }
        
    }


}

