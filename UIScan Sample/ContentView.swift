//
//  ContentView.swift
//  UIScanSampleiOS
//
//

import SwiftUI
import SwiftAutoScreenShot

struct ContentView: View {
    
    @State var inputName = ""
    var body: some View {
            TabView{
                HomePageView()
                    .tabItem {
                        Image("home")
                        Text("HOME")
                    }
                Text("WHISHLIST")
                    .tabItem {
                        Image("whishlist")
                        Text("WHISHLIST")
                    }
                Text("ORDER")
                    .tabItem {
                        Image("bag")
                        Text("ORDER")
                    }
                Text("LOGIN")
                    .tabItem {
                        Image("person")
                        Text("LOGIN")
                    }
            }
            .accentColor(.black)
    }
}

#Preview {
    ContentView()
}
