//
//  MainViewController.swift
//  Nightingale
//
//  Created by Mate Narh on 8/22/23.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet var startRecordingButton: UIButton!
    @IBOutlet var stopRecordingButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func startRecordingButtonPressed(_ sender: UIButton) {
        // Code to start audio recording
        startRecordingButton.isEnabled = false
        stopRecordingButton.isEnabled = true
    }

    @IBAction func stopRecordingButtonPressed(_ sender: UIButton) {
        // Code to stop audio recording
        startRecordingButton.isEnabled = true
        stopRecordingButton.isEnabled = false
    }
}
