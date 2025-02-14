//
//  ViewController.swift
//  AVplayer
//
//  Created by BJIT on 14/2/25.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func playVideoTapped(_ sender: UIButton) {
        // Specify the URL of the video
                guard let videoUrl = URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4") else {
                    print("Invalid video URL")
                    return
                }
//        guard let filePath = Bundle.main.path(forResource: "video", ofType: "mp4"),
//              let videoUrl = URL(string: filePath) else {
//              return
//        }

                // Create an AVPlayer instance
                let player = AVPlayer(url: videoUrl)

                // Create an AVPlayerViewController and assign the player
                let playerViewController = AVPlayerViewController()
                playerViewController.player = player

                // Present the AVPlayerViewController
                present(playerViewController, animated: true) {
                    // Start video playback once the player is presented
                    player.play()
                }
    }
    
}

