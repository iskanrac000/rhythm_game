//
//  songScreen.swift
//  rhythm game
//
//  Created by Rachel on 4/21/23.
//

import UIKit
import SwiftUI

class songScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        print("hi")
//
//        let imageName = "pineapple.png"
//        let image = UIImage(named: imageName)
//        let imageView = UIImageView(image: image!)
//        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        view.addSubview(imageView)
//        animate(x: imageView)
    

        // Do any additional setup after loading the view.

    }
    override func viewDidAppear(_ animated: Bool){
        
        super.viewDidAppear(playSongNotes())
      
    }
    
    func playSongNotes() -> Bool{
        print("hi")
        let imageName = "pineapple.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        view.addSubview(imageView)
        animate(x: imageView)
        
        return true
        
    }
    
        
        
    @IBOutlet weak var firstButton: UIButton!
    
    @IBAction func firstButtonTapped(_ sender: Any) {
      
    
    }


    func animate(x: UIImageView){
        UIView.animate(withDuration: 10, animations: {
            x.transform = CGAffineTransform(translationX: 0, y: 500)


        })


    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
