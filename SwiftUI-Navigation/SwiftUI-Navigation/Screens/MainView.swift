//
//  ContentView.swift
//  SwiftUI-Navigation
//
//  Created by Evgheni Lisita on 30.05.20.
//  Copyright © 2020 Evgheni Lisita. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var appData: AppData
    
    var body: some View {
        TabView(selection: $appData.selectedTab) {
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
