    //
    //  HomeViewService.swift
    //  MVVMSample-2
    //
    //  Created by mehmet karanlık on 25.12.2021.
    //

import Foundation


class HomeViewService {
    var baseUrl : String  = "https://jsonplaceholder.typicode.com/"
    var usersEndPoint : String = "/users"
    
    func getUsers(completion:@escaping ([User]) -> ()) {
        guard let url = URL(string: "\(baseUrl)+\(usersEndPoint)") else {return}
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let users = try? JSONDecoder().decode([User].self, from: data!)
            
            DispatchQueue.main.async {
                completion(users!)
            }
        }
        .resume()
    }
}
