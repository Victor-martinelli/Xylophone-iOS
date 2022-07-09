import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        //Reduce opacity by 50%
        sender.alpha = 0.5
        playSound(soundTitle: sender.currentTitle!)
        
        print("Start")
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring Button opacity back up to fully opaque.
            sender.alpha = 1.0
            print("End")
        }
    }
    
    func playSound(soundTitle: String) {
        let url = Bundle.main.url(forResource: soundTitle, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
