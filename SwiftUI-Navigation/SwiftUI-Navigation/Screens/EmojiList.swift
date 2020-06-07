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
    
    var navigationLink: NavigationLink<EmptyView, EmojiContent>? {
        guard let selectedItemId = appData.selectedItemId,
            let selectedItem = appData.emojis.first(where: {$0.id == selectedItemId}) else {
                return nil
        }
        
        return NavigationLink(
            destination: EmojiContent(emoji: selectedItem.content),
            tag:  selectedItemId,
            selection: $appData.selectedItemId
        ) {
            EmptyView()
        }
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                navigationLink // magic
                List(appData.emojis) { emoji in
                    Button(action: {
                        self.appData.selectedItemId = emoji.id
                    }) {
                        Text("\(emoji.content)")
                    }
                }
            }.navigationBarTitle(Text("Emojis"))
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
