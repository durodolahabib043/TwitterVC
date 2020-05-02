//
//  TwitterVCTests.swift
//  TwitterVCTests
//
//  Created by Habib Durodola on 2020-05-02.
//  Copyright © 2020 DOH. All rights reserved.
//

import XCTest
@testable import TwitterVC

class TwitterVCTests: XCTestCase {


    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let userViewModel = UserViewModel(name: "Habib", handle: "@habib133", description: "Late Ayinde Barrister is my G.O.A.T")
            let userViewModelN = UserViewModel(name: "Jake Corleone", handle: "@Hitee_", description: "Investment Banker| Writer | Aspiring Politician | DubNation| Eminem|Conservative| Christian | “March was characterized by two distinct periods — the period before and the period after all three levels of government introduced emergency health and economic measures to contain COVID-19,” wrote Zoocasa on its website. “The slowdown in housing activity was most pronounced following Ontario’s emergency declaration on March 17.”")
             let userArray = [userViewModel , userViewModelN]

        XCTAssertEqual(userViewModel.getUser(), userArray)

    }


}
