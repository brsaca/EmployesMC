//
//  PersistenceInterator.swift
//  EmployesMC
//
//  Created by Brenda Saavedra Cantu on 23/10/23.
//

import Foundation

protocol PersistenceInterator {
    var bundleURL: URL { get }
    var docURL: URL { get }
    
    func loadEmployees() throws -> [Employees]
    func saveEmployees(_ employees:[Employees]) throws
}

extension PersistenceInterator {
    func loadEmployees() throws -> [Employees] {
        var url = docURL
        if !FileManager.default.fileExists(atPath: url.path()) {
            url = bundleURL
        }
        
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode([Employees].self, from: data)
    }
    
    func saveEmployees(_ employees: [Employees]) throws {
        let data = try JSONEncoder().encode(employees)
        try data.write(to: docURL, options: .atomic)
    }
}

struct Persistence: PersistenceInterator {
    var bundleURL: URL {
        Bundle.main.url(forResource: "EmployeesFull", withExtension: "json")!
    }
    
    var docURL: URL {
        URL.documentsDirectory.appending(path: "EmployeesFull.json")
    }
}
