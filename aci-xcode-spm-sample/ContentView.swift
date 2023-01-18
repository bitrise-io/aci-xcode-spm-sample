//
//  ContentView.swift
//  aci-xcode-spm-sample
//
//  Created by Zach Gray on 1/18/23.
//

import SwiftUI
import AciSpmSample
import RxSwift

class ViewModel : ObservableObject {
    private let textObservable = AciSpmSample().messageSubject.asObservable()
    private let bag = DisposeBag()
    @Published var text: String = ""

    init() {
        textObservable.subscribe { [self] t in
            text = t
        }
        .disposed(by: bag)
    }
}

struct ContentView: View {
    @ObservedObject var vm : ViewModel

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(vm.text)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(vm: ViewModel())
    }
}
