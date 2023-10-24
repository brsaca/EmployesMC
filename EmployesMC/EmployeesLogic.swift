//
//  EmployeesLogic.swift
//  EmployesMC
//
//  Created by Brenda Saavedra Cantu on 24/10/23.
//

import SwiftUI

@Observable
final class EmployeesLogic {
    static let shared = EmployeesLogic()
    
    let persistence: PersistenceInterator
    
    var employees: [Employees]
    
    var showAlert = false
    var message = ""
    
    init(persistence: PersistenceInterator = Persistence()) {
        self.persistence = persistence
        do {
            self.employees = try persistence.loadEmployees()
        } catch {
            self.employees = []
            message = error.localizedDescription
            showAlert.toggle()
        }
    }
}
