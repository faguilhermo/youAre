//
//  ToggleModeModel.swift
//  youAreApp
//
//  Created by Fabrício Guilhermo on 17/04/20.
//  Copyright © 2020 Fabrício Guilhermo. All rights reserved.
//

import Foundation

struct ToggleModel {
    var isDark: Bool = true {
        didSet { SceneDelegate.shared?.window!.overrideUserInterfaceStyle = isDark ? .dark : .light }
    }
}
