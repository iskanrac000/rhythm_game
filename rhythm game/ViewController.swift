//
//  ViewController.swift
//  rhythm game
//
//  Created by Rachel on 4/11/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    var player: AVAudioPlayer?
    
    
    @IBOutlet weak var button: UIButton!
    @IBAction func buttonTap(_ sender: Any) {
        if let player = player, player.isPlaying{
            //stop playback
            player.stop()
        }
        else{
            //set up player and play
            let urlString = Bundle.main.path(forResource: "relaxing", ofType: "mp3")
            
            do{
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
                guard let urlString = urlString else{
                    return
                }
                
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                guard let player = player else{
                    return
                }
                
                player.play()
                
            }
            catch{
                print("Something went wrong.")
            }
        }
    }
    
    

}


