//
//  AppData.swift
//  SwiftUI-Navigation
//
//  Created by Evgheni Lisita on 06.06.20.
//  Copyright © 2020 Evgheni Lisita. All rights reserved.
//

import Combine

class AppData: ObservableObject {
    @Published private(set) var emojis: [String] = ["👍", "👏", "😍", "✅", "🌷", "😉", "👎"]
    @Published var selectedTab: Int = 1
    
    func selectTab(withIndex index: Int) {
        selectedTab = index
    }
}
