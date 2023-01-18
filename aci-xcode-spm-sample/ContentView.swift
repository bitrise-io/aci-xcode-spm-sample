//
//  ContentView.swift
//  aci-xcode-spm-sample
//
//  Created by Zach Gray on 1/18/23.
//

import SwiftUI
import AciSpmSample

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(AciSpmSample().text)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
