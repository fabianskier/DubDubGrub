//
//  HapticManager.swift
//  DubDubGrub
//
//  Created by Oscar Cristaldo on 2022-10-16.
//

import UIKit

struct HapticManager {
    static func playSuccess() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
    }
}
