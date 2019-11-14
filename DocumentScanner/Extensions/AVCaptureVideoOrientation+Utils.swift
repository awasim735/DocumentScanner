//
//  UIDeviceOrientation+Utils.swift
//  WeScan
//
//  Created by Thomson Reuters on 13/11/19.
//  Copyright © 2019 Thomson Reuters. All rights reserved.
//

import Foundation
import AVFoundation
import UIKit


extension AVCaptureVideoOrientation {
    
    /// Maps UIDeviceOrientation to AVCaptureVideoOrientation
    init?(deviceOrientation: UIDeviceOrientation) {
        switch deviceOrientation {
        case .portrait:
            self.init(rawValue: AVCaptureVideoOrientation.portrait.rawValue)
        case .portraitUpsideDown:
            self.init(rawValue: AVCaptureVideoOrientation.portraitUpsideDown.rawValue)
        case .landscapeLeft:
            self.init(rawValue: AVCaptureVideoOrientation.landscapeLeft.rawValue)
        case .landscapeRight:
            self.init(rawValue: AVCaptureVideoOrientation.landscapeRight.rawValue)
        case .faceUp:
            self.init(rawValue: AVCaptureVideoOrientation.portrait.rawValue)
        case .faceDown:
            self.init(rawValue: AVCaptureVideoOrientation.portraitUpsideDown.rawValue)
        default:
            self.init(rawValue: AVCaptureVideoOrientation.portrait.rawValue)
        }
    }
    
}
