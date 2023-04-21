//
//  homeScreen.swift
//  rhythm game
//
//  Created by Rachel on 4/11/23.
//

import UIKit
import AVFoundation

class homeScreen: UIViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    
    var player: AVAudioPlayer?
    
    
    @IBOutlet weak var albumImageView: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    
    
    @IBOutlet weak var textField: UITextField!
    
    
    
    
    
    @IBAction func submitText(_ sender: Any) {
        let fieldText = textField.text!
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondController = storyboard.instantiateViewController(withIdentifier: "second_controller") as! selectionScreen
        
        secondController.loadViewIfNeeded()
        secondController.setup(name: fieldText)
        
        
        
        self.show(secondController, sender: (Any).self)
        //print(fieldText)
        
        
        
    }
    
    
    
    @IBAction func buttonTap(_ sender: Any) {
//        if let player = player, player.isPlaying{
//            //stop playback
//            player.stop()
//        }
//        else{
//            //set up player and play
//            let urlString = Bundle.main.path(forResource: "Night Drift", ofType: "mp3")
//
//            do{
//                try AVAudioSession.sharedInstance().setMode(.default)
//                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
//
//                guard let urlString = urlString else{
//                    return
//                }
//
//                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
//                guard let player = player else{
//                    return
//                }
//
//                player.play()
//
//            }
//            catch{
//                print("Something went wrong.")
//            }
//        }




        UIView.animate(withDuration: 0.5, animations: {
            self.albumImageView.transform = CGAffineTransform(translationX: 0, y: 100)

        })


    }
    
    

}


