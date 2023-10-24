//
//  EmployeeCell.swift
//  EmployesMC
//
//  Created by Brenda Saavedra Cantu on 24/10/23.
//

import SwiftUI

struct EmployeeCell: View {
    //MARK: View Properties
    let employee: Employees
    
    var body: some View {
        VStack(alignment: .leading){
            Text("\(employee.firstName), \(employee.lastName)")
                .font(.headline)
            Text(employee.email)
                .font(.caption)
                .foregroundStyle(.secondary)
            Text(employee.department.rawValue)
                .font(.footnote)
                .padding(.top, 5)
        }
    }
}

#Preview {
    EmployeeCell(employee: Employees.mock)
}
