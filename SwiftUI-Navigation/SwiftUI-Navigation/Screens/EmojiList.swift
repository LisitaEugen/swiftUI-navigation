//
//  EmojiList.swift
//  SwiftUI-Navigation
//
//  Created by Evgheni Lisita on 06.06.20.
//  Copyright © 2020 Evgheni Lisita. All rights reserved.
//

import SwiftUI

struct EmojiList: View {
    
    @EnvironmentObject var appData: AppData
    
    var body: some View {
        NavigationView {
            List(appData.emojis, id: \.self) { emoji in
                NavigationLink(destination:
                                EmojiContent(emoji: emoji)) {
                    Text("\(emoji)")
                }
            }
            .navigationBarTitle(Text("Emojis"))
        }
    }
}

struct EmojiContent: View {
    let emoji: String
    var body: some View {
        Text("\(emoji)")
    }
}

struct EmojiList_Previews: PreviewProvider {
    static var previews: some View {
        EmojiList()
    }
}
