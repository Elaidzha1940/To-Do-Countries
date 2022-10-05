//
//  ContentView.swift
//  Travel
//
//  Created by Elaidzha Shchukin on 04.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    let countries = countryList
    
    var body: some View {
        
        VStack {
            NavigationView {
                List {
                    Section(
                        header: Text("Destinations")) {
                            ForEach(countries, id: \.self) { country in
                            
                                    HStack {
                                        Text(country)
                                        Spacer()
                                        Image(systemName: "mappin")
                                        Text("USA")
                                    }
                                
                                }
                            }
                }
                    
                }
            .listStyle(.grouped)
            }
        }
        
    
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
