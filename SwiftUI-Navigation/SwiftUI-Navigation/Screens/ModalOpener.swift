//
//  ModalOpener.swift
//  SwiftUI-Navigation
//
//  Created by Evgheni Lisita on 06.06.20.
//  Copyright © 2020 Evgheni Lisita. All rights reserved.
//

import SwiftUI

struct ModalOpener: View {
    @State var isShowing: Bool = false
    
    var body: some View {
        VStack {
            Button(action: open) {
                Text("Open a modal")
            }.sheet(isPresented: $isShowing, onDismiss: {
                print("Dismissed")
            }) {
                ModalContent()
            }
        }
    }
    
    func open() {
        isShowing.toggle()
    }
}

struct ModalContent: View {
    var body: some View {
        Text("It's a modal!")
    }
}

struct ModalOpener_Previews: PreviewProvider {
    static var previews: some View {
        ModalOpener()
    }
}
