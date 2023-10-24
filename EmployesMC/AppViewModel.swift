//
//  AppViewModel.swift
//  EmployesMC
//
//  Created by Brenda Saavedra Cantu on 24/10/23.
//

import Foundation

@Observable
final class AppViewModel {
    var employeesLogic: EmployeesLogic
    
    init(employeesLogic: EmployeesLogic = .shared) {
        self.employeesLogic = employeesLogic
    }
}
