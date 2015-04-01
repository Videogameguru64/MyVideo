//
//  ViewController.swift
//  MyVideo
//
//  Created by webstudent on 3/30/15.
//  Copyright (c) 2015 Rock Valley College. All rights reserved.
//
import MediaPlayer
import UIKit

class ViewController: UIViewController,MPMediaPickerControllerDelegate {
    var moviePlayer :MPMoviePlayerController?

    func playVideo() {
        let path = NSBundle.mainBundle().pathForResource("trailer1",ofType:"mp4")
        let url = NSURL.fileURLWithPath(path!)
        moviePlayer = MPMoviePlayerController(contentURL:url)
        if let player = moviePlayer {
            var rect = CGRectMake(0,30,UIScreen.mainScreen().bounds.width,
                UIScreen.mainScreen().bounds.height-30)
            player.view.frame=rect
            player.prepareToPlay()
            player.scalingMode = .AspectFill
            self.view.addSubview(player.view)
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playVideo()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

