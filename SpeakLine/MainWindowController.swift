//
//  MainWindowController.swift
//  SpeakLine
//
//  Created by usr0600328 on 2015/06/30.
//  Copyright (c) 2015年 ryoma. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var speakButton: NSButton!
    @IBOutlet weak var stopButton: NSButton!
    
    let speechSynth = NSSpeechSynthesizer()

    override var windowNibName: String {
        return "MainWindowController"
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
    }
    
    // MARK: - Action methods
    
    @IBAction func speakIt(sender: NSButton) {
        
        // Get typed-in text as a string
        let string = textField.stringValue
        if string.isEmpty {
            println("string from \(textField) is empty")
        } else {
            speechSynth.startSpeakingString(string)
        }
    }
    
    @IBAction func stopIt(sender: NSButton) {
        speechSynth.stopSpeaking()
    }
}
