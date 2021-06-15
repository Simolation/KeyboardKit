//
//  KeyboardGesture.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2019-10-15.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import Foundation

/**
 This enum defines the various ways a user can interact with
 keyboard actions.
 */
public enum KeyboardGesture: CaseIterable {

    case tap
    case doubleTap
    case press
    case release
    case longPress
    case repeatPress
}
