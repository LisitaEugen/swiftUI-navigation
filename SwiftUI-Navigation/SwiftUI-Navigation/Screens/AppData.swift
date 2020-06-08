//
//  AppData.swift
//  SwiftUI-Navigation
//
//  Created by Evgheni Lisita on 06.06.20.
//  Copyright © 2020 Evgheni Lisita. All rights reserved.
//

import Combine

class AppData: ObservableObject {
    struct Emoj: Identifiable {
        var content: String
        var id: String {
            return content
        }        
    }
    
    @Published var emojis: [Emoj] = [
        Emoj(content: "👍"),
        Emoj(content: "👏"),
        Emoj(content: "😍"),
        Emoj(content: "✅"),
        Emoj(content: "🌷"),
        Emoj(content: "😉"),
        Emoj(content: "😉")]
    //, "👏", "😍", "✅", "🌷", "😉", "👎"
    @Published var selectedTab: Int = 0
    @Published var selectedItemId: String? = nil
    
    func selectEmojiTabWith🌷() {
        selectedTab = 1
        selectedItemId = "🌷"
    }
}
