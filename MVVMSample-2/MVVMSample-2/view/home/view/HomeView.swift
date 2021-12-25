//
//  ContentView.swift
//  MVVMSample-2
//
//  Created by mehmet karanlık on 25.12.2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = HomeViewModel()
    var body: some View {
        List(viewModel.users) { index in
            Text(index.name)
            
        }
        .onAppear {
            viewModel.getUsers()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
