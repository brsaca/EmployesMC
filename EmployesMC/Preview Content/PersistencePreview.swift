//
//  PersistencePreview.swift
//  EmployesMC
//
//  Created by Brenda Saavedra Cantu on 23/10/23.
//

import Foundation

struct PersistencePreview: PersistenceInterator {
    var bundleURL: URL {
        Bundle.main.url(forResource: "EmployeesDev", withExtension: "json")!
    }
    
    var docURL: URL {
        URL.documentsDirectory.appending(path: "EmployeesDev.json")
    }
}

extension AppViewModel {
    static let preview = AppViewModel(employeesLogic: EmployeesLogic(persistence: PersistencePreview()))
}

extension Employees {
    static let mock = Employees(id: 1, firstName: "Walker", lastName: "Paul", email: "pau@gmail.com", gender: .male, department: .engineering, avatar: URL(string: "https://robohash.org/consequatursequiut.png?size=50x50&set=set1")!)
}
