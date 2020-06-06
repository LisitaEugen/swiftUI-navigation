//
//  AppData.swift
//  SwiftUI-Navigation
//
//  Created by Evgheni Lisita on 06.06.20.
//  Copyright © 2020 Evgheni Lisita. All rights reserved.
//

import Combine

class AppData: ObservableObject {
    @Published var emojis: [String] = ["👍", "👏", "😍", "✅", "🌷", "😉", "👎"]
}
