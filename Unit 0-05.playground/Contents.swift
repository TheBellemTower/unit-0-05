// Created on: September-2018
// Created by: Ethan Bellem
// Created for: ICS3U
// This program does basic math, using UIKit
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let equation1Label = UILabel()
    let equation2Label = UILabel()
    let instructions = UILabel()
    let answerButton = UIButton()
    let answerButton2 = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        //equation1Label.text = ""
        view.addSubview(equation1Label)
        equation1Label.translatesAutoresizingMaskIntoConstraints = false
        equation1Label.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        equation1Label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        //equation2Label.text = ""
        view.addSubview(equation2Label)
        equation2Label.translatesAutoresizingMaskIntoConstraints = false
        equation2Label.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        equation2Label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        instructions.text = " length = 5, width = 3"
        view.addSubview(instructions)
        instructions.translatesAutoresizingMaskIntoConstraints = false
        instructions.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructions.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 260).isActive = true
        
        answerButton.setTitle("answerA", for: .normal)
        answerButton.titleLabel?.textAlignment = .center
        answerButton.setTitleColor(.blue, for: .normal)
        answerButton.addTarget(self, action: #selector(answerText), for: .touchUpInside)
        view.addSubview(answerButton)
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        answerButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        answerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        answerButton2.setTitle("answerP", for: .normal)
        answerButton2.titleLabel?.textAlignment = .center
        answerButton2.setTitleColor(.blue, for: .normal)
        answerButton2.addTarget(self, action: #selector(answerText2), for: .touchUpInside)
        view.addSubview(answerButton2)
        answerButton2.translatesAutoresizingMaskIntoConstraints = false
        answerButton2.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        answerButton2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
    
    @objc func answerText() {
        // shows area
        equation1Label.text = "area = \(5 * 3)cm^2"
    }
    
    @objc func answerText2() {
        // shows area
        equation2Label.text = "perimiter = \(5 * 2 + 3 * 2) cm"
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
