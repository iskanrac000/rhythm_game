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
    
    
    var song = 1
    
    func assignSong(s: Int){
        song = s
        
    }
    
    override func viewDidAppear(_ animated: Bool){
        if (song == 1){
            super.viewDidAppear(playSongNotes1())
            
        }
        if (song == 2){
            super.viewDidAppear(playSongNotes2())
        }
        
    
        

      
    }
    

    
    func playSongNotes1() -> Bool{
//        let imageName = "musicNote.png"
//        let image = UIImage(named: imageName)
//        let imageView = UIImageView(image: image!)
//        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        view.addSubview(imageView)
//        animate1(x: imageView)
        
        let order = [1, 3, 2, 4, 2, 3, 1, 2, 3, 1, 4, 3, 2, 4, 1, 2]
        
//        var x = 7.2
//        for number in order{
//            if number == 1{
//                noteMap1(delayTime: x, xVal: 17)
//            }
//            if number == 2{
//                noteMap1(delayTime: x, xVal: 104)
//            }
//            if number == 3{
//                noteMap1(delayTime: x, xVal: 191)
//            }
//            if number == 4{
//                noteMap1(delayTime: x, xVal: 278)
//            }
//            x += 1.135
//        }
        
        var x = 8.15
        var turn = 1
        for number in order{
            if number == 1{
                noteMap1(delayTime: x, xVal: 17)
            }
            if number == 2{
                noteMap1(delayTime: x, xVal: 104)
            }
            if number == 3{
                noteMap1(delayTime: x, xVal: 191)
            }
            if number == 4{
                noteMap1(delayTime: x, xVal: 278)
            }
            
            if turn < 7 {
                x += 1.15
            }
            if turn >= 7{
                x += 0.56
            }
            turn += 1
        }

        return true
        
    }
    
    func noteMap1(delayTime: Double, xVal: Double) {
        
       
        
        let imageName = "musicNote.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: xVal, y: -150, width: 100, height: 100)
        view.addSubview(imageView)
        //animate1(x: imageView)
        UIView.animate(withDuration: 10, delay: delayTime, options: [.curveLinear], animations: {
            imageView.transform = CGAffineTransform(translationX: 0, y: 1000)


        })
        
        
    }
    func playSongNotes2() -> Bool{
        let imageName = "musicNote.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        view.addSubview(imageView)
        animate2(x: imageView)
        
        return true
        
    }
    
        
        
    @IBOutlet weak var firstButton: UIButton!
    
    @IBAction func firstButtonTapped(_ sender: Any) {
      
    
    }


    func animate1(x: UIImageView){
      


    }
    
    
    func animate2(x: UIImageView){
        UIView.animate(withDuration: 10, animations: {
            x.transform = CGAffineTransform(translationX: 0, y: 100)


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
