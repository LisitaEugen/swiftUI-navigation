//
//  TabSelector.swift
//  SwiftUI-Navigation
//
//  Created by Evgheni Lisita on 06.06.20.
//  Copyright © 2020 Evgheni Lisita. All rights reserved.
//

import SwiftUI

struct TabSelector: View {
    @EnvironmentObject var appData: AppData
    
    var body: some View {
        VStack {
            Button(action: {
                self.appData.selectTab(withIndex: 2)
            }) {
                Text("Select ze tab")
            }
        }
    }
}

struct TabSelector_Previews: PreviewProvider {
    static var previews: some View {
        TabSelector()
    }
}
