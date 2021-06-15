//
//  KeyboardInput.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2021-02-03.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import Foundation

/**
 This struct represents a keyboard input item with a neutral,
 an uppercased and a lowercased string.
 
 You can either create an instance with just a string, which
 is the regular way of working with input sets. However, the
 struct also supports specific casings, which means that you
 can use it to create unicode keyboards etc.
 */
public struct KeyboardInput: Equatable {
    
    public init(_ char: String) {
        self.neutral = char
        self.lowercased = char.lowercased()
        self.uppercased = char.uppercased()
    }
    
    public init(
        neutral: String,
        uppercased: String,
        lowercased: String) {
        self.neutral = neutral
        self.lowercased = lowercased
        self.uppercased = uppercased
    }
    
    public init(
        neutral: String,
        lowercased: String,
        uppercased: String) {
        self.neutral = neutral
        self.lowercased = lowercased
        self.uppercased = uppercased
    }
    
    public let neutral: String
    public let lowercased: String
    public let uppercased: String
    
    public func character(for casing: KeyboardCasing) -> String {
        switch casing {
        case .lowercased: return lowercased
        case .uppercased, .capsLocked: return uppercased
        case .neutral: return neutral
        }
    }
}
