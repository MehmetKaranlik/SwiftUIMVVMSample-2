//
//  UserModel.swift
//  MVVMSample-2
//
//  Created by mehmet karanlık on 25.12.2021.
//

import Foundation
import CloudKit


struct User : Codable, Identifiable {
    let id : Int
    let name : String
    let username: String
    let email : String
}
