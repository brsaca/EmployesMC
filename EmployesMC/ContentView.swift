//
//  ContentView.swift
//  EmployesMC
//
//  Created by Brenda Saavedra Cantu on 23/10/23.
//

import SwiftUI

struct ContentView: View {
    //MARK: View Properties
    @Environment(AppViewModel.self) var vm
    
    var body: some View {
        @Bindable var binding = vm.employeesLogic
        
        NavigationStack {
            List(vm.employeesLogic.employees) { employee in
                NavigationLink(value: employee) {
                    EmployeeCell(employee: employee)
                }
            }
            .navigationTitle("Employees")
            .navigationDestination(for: Employees.self) { employee in
                EmployeeDetail(employee: employee)
            }
        }
        .alert("Application Error", isPresented: $binding.showAlert) {
        } message: {
            Text(vm.employeesLogic.message)
        }
    }
}

#Preview {
    ContentView()
        .environment(AppViewModel.preview)
}
