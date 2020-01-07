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
    let sound = "Juti Jharrke - Hardeep Grewal  Afsana Khan (DJJOhAL.Com)"
    
    let path = Bundle.main.path(forResource: "bach", ofType: "mp3")
    var timer = Timer()
    
    @IBOutlet weak var volumeslider: UISlider!
    
    @IBOutlet weak var scrubberslider: UISlider!
    
    @IBAction func pausebarbutton(_ sender: Any) {
        player.pause()
        timer.invalidate()
    }
    
    @IBAction func palybarbuttonb(_ sender: Any) {
        player.play()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.updateScrubber(_:)), userInfo: nil, repeats: true)
	
    }
    
    @IBAction func stopButton(_ sender: Any) {
        player.stop()
        timer.invalidate()
        player.currentTime=0
    }
    
    @IBAction func updateScrubber(_ sender: Any) {
        scrubberslider.value=Float(player.currentTime)
    }
    
    @IBAction func volume(_ sender: Any) {
        player.volume=volumeslider.value

    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let filelocation = Bundle.main.path(forResource: sound, ofType: "mp3")

        do {
            player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: filelocation!))}
    catch{
    print(error)
            
        }
    }
    override  func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
        // Do any additional setup after loading the view.
    }



