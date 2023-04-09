//
//  ContentView.swift
//  TabViewSwiftUI
//
//  Created by sss on 09.04.2023.
//

import SwiftUI

struct MainTabView: View {
    
    
    @State var tabSelected = 0
    
    var body: some View {
        
        TabView(selection: $tabSelected) {
            HomeView(tabSelection: $tabSelected)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            ZStack {
                Color.blue.ignoresSafeArea(edges: .top)
                Text("Second")
            }
                .badge(10)
                .tabItem {
                    Image(systemName: "globe")
                    Text("Second")
                }
                .tag(1)
            
            ZStack {
                Color.green.ignoresSafeArea(edges: .top)
                Text("Third")
            }
                .badge(10)
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Person")
                }
                .tag(2)
        }.font(.headline).tint(.primary)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

struct HomeView: View {
    
    @Binding var tabSelection: Int
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea(edges: .top)
            
            VStack {
                Text("Home")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button {
                    tabSelection = 2 
                } label: {
                    Text("Go to the third view")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .tint(.blue)
                        .background(.white)
                        .cornerRadius(15)
                }
            }
            
        }
            
    }
}
