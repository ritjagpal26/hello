//
//  ViewController.swift
//  hello
//
//  Created by MacStudent on 2020-01-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit
import  AVFoundation
class ViewController: UIViewController {
    var player = AVAudioPlayer()
    
    let path = Bundle.main.path(forResource: "bach", ofType: "mp3")
    var timer = Timer()
    
    @IBOutlet weak var volumeslider: UISlider!
    
    @IBOutlet weak var scrubberslider: UISlider!
    
    @IBAction func pausebarbutton(_ sender: Any) {
    }
    
    @IBAction func palybarbuttonb(_ sender: Any) {
        player.play()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateSrubber), userInfo: nil, repeats: nil)
	
    }
    
    @IBAction func stopButton(_ sender: Any) {
    }
    
    @IBAction func updateScrubber(_ sender: Any) {
        scrubberslider.value = Float(player.)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path!))}
    catch{
    print(error)
            
        }
    }
        // Do any additional setup after loading the view.
    }



