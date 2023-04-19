//
//  selectionScreen.swift
//  rhythm game
//
//  Created by Aparupa Brahma on 4/19/23.
//

import UIKit

class selectionScreen: UIViewController {

    @IBOutlet weak var selectionMainText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func setup(name: String) {
        selectionMainText.text = name
        
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
