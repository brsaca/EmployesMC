//
//  EmployeeDetail.swift
//  EmployesMC
//
//  Created by Brenda Saavedra Cantu on 24/10/23.
//

import SwiftUI

struct EmployeeDetail: View {
    //MARK: View Properties
    let employee: Employees
    
    var body: some View {
        Form {
            LabeledContent("First Name", value: employee.firstName)
            LabeledContent("Last Name", value: employee.lastName)
            LabeledContent("Email", value: employee.email)
        }
        .navigationTitle("Employees Detail")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    EmployeeDetail(employee: Employees.mock)
}
