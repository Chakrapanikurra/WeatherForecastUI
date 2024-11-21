//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Chakrapani Kurra on 2024-11-20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForcast(day: "Mon", high: -8, low: -11, isRainy: true)
            
            DayForcast(day: "Tue", high: 3, low: -10, isRainy: false)
            
            DayForcast(day: "Wed", high: -10, low: -21, isRainy: true)
        }
    }
}

#Preview {
    ContentView()
}

struct DayForcast: View {
    let day: String
    let high: Int
    let low: Int
    let isRainy: Bool
    
    var iconName: String{
        if(isRainy){
            return "cloud.snow.fill"
        }else{
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color{
        if(isRainy){
            return Color.blue
        }else{
            return Color.yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .font(Font.largeTitle)
                .padding(5)
                .foregroundStyle(iconColor)
            Text("High:  \(high)")
            Text("Low:  \(low)")
            
        }
        .padding()
    }
}
