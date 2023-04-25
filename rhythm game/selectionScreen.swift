//
//  selectionScreen.swift
//  rhythm game
//
//  Created by Aparupa Brahma on 4/19/23.
//

import UIKit
import AVFoundation



class selectionScreen: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func setup(name: String) {
        selectionMainText.text = name
        
    }

    @IBOutlet weak var selectionMainText: UILabel!
    
    
    var player: AVAudioPlayer?
    
    var song1Tapped = false
    var song2Tapped = false
    
    @IBOutlet weak var song1Outlet: UIButton!
    @IBAction func song1Button(_ sender: Any) {
        song1Tapped = true
        song2Tapped = false
 
    }
    @IBOutlet weak var song2Outlet: UIButton!
    @IBAction func song2Button(_ sender: Any) {
        song1Tapped = false
        song2Tapped = true
    }
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        //segue to next screen
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let thirdController = storyboard.instantiateViewController(withIdentifier: "third_controller") as! songScreen
        
        thirdController.loadViewIfNeeded()

        
        
        self.show(thirdController, sender: (Any).self)
       
        
        
        
        if song1Tapped{
            
            //doesn't work lol
            
        thirdController.startGame()
            
        if let player = player, player.isPlaying{
            //stop playback
            player.stop()
        }
        else{
            //set up player and play
       
            let urlString = Bundle.main.path(forResource: "Night Drift", ofType: "mp3")
            

        
            
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
        if song2Tapped{
            if let player = player, player.isPlaying{
                //stop playback
                player.stop()
            }
            else{
                //set up player and play
           
                let urlString = Bundle.main.path(forResource: "pancakeIsLoveEdited", ofType: "mp3")
                

            
                
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
}



