//
//  UserViewModel.swift
//  TwitterVC
//
//  Created by Habib Durodola on 2020-04-12.
//  Copyright © 2020 DOH. All rights reserved.
//

import Foundation


struct UserViewModel {
    let name: String
    let handle: String
    let description: String

    init(name: String , handle: String, description:String ) {
        self.name = name
        self.handle = handle
        self.description = description
    }

    init()
    {
        self.init(name: "String" , handle: "String", description:"String" )
    }



    func getUser()->[UserViewModel] {
        let userHabib = UserViewModel(name: "Habib", handle: "habib133", description: "Late Ayinde Barrister is my G.O.A.T")
        let userTesr = UserViewModel(name: "Jake Corleone", handle: "Hitee_", description: "Investment Banker| Writer | Aspiring Politician | DubNation| Eminem|Conservative| Christian")
        let userArray = [userHabib , userTesr]
        return userArray
    }


}


