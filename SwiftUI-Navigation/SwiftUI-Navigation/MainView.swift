//
//  ContentView.swift
//  SwiftUI-Navigation
//
//  Created by Evgheni Lisita on 30.05.20.
//  Copyright © 2020 Evgheni Lisita. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            TabSelector().tabItem({
                VStack {
                    Image(systemName: "arrow.up.right.diamond")
                    Text("Tab 1")
                }
            }).tag(0)
            EmojiList().tabItem({
                VStack {
                    Image(systemName: "list.bullet")
                    Text("Tab 2")
                }
            }).tag(1)
            ModalOpener().tabItem({
                VStack {
                    Image(systemName: "arrow.up.right.diamond")
                    Text("Tab 3")
                }
            }).tag(2)
        }
    }
}


struct TabSelector: View {
    var body: some View {
        VStack {
            Text("Tab ")
        }
    }
}

struct EmojiList: View {
    let emojis: [String] = ["👍", "👏", "😍", "✅", "🌷", "😉", "👎"]
    var body: some View {
        NavigationView {
            List(emojis, id: \.self) { emoji in
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


struct ModalOpener: View {
    @State var isShowing: Bool = false
    
    var body: some View {
        Button(action: open) {
            Text("Open a modal")
        }.sheet(isPresented: $isShowing, onDismiss: {
            print("Dismissed")
        }) {
            ModalContent()
        }
    }
    
    func open() {
        isShowing.toggle()
    }
}

struct ModalContent: View {
    var body: some View {
        Text("aads")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
//    static var previews: some View {
//        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
//            MainView()
//                .previewDevice(PreviewDevice(rawValue: deviceName))
//        }
//    }
}
