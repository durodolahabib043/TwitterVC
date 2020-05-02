//
//  UserViewModel.swift
//  TwitterVC
//
//  Created by Habib Durodola on 2020-04-12.
//  Copyright © 2020 DOH. All rights reserved.
//

import Foundation


struct UserViewModel : Equatable {
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
        let userHabib = UserViewModel(name: "Habib", handle: "@habib133", description: "Late Ayinde Barrister is my G.O.A.T")
        let userTesr = UserViewModel(name: "Jake Corleone", handle: "@Hitee_", description: "Investment Banker| Writer | Aspiring Politician | DubNation| Eminem|Conservative| Christian | “March was characterized by two distinct periods — the period before and the period after all three levels of government introduced emergency health and economic measures to contain COVID-19,” wrote Zoocasa on its website. “The slowdown in housing activity was most pronounced following Ontario’s emergency declaration on March 17.”")
        let userArray = [userHabib , userTesr]
        return userArray
    }


}


