//
//  EmployesMCApp.swift
//  EmployesMC
//
//  Created by Brenda Saavedra Cantu on 23/10/23.
//

import SwiftUI

@main
struct EmployesMCApp: App {
    //MARK: View Properties
    @State var vm = AppViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(vm)
        }
    }
}
