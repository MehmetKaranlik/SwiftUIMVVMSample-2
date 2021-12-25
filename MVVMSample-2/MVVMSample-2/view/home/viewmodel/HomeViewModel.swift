//
//  HomeViewModel.swift
//  MVVMSample-2
//
//  Created by mehmet karanlık on 25.12.2021.
//

import Foundation

class HomeViewModel : ObservableObject {
    var  service : HomeViewService
    @Published var users = [User]()
    
    init(){
        service = HomeViewService()
    }
    
    
    func getUsers() {
        service.getUsers { users in
            self.users = users
        }
    }
}
