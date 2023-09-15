//
//  ContentView.swift
//  FoodPicker
//
//  Created by Andy on 2023/9/15.
//

import SwiftUI

struct ContentView: View {
    let food = ["汉堡", "沙拉", "披萨", "意大利面", "鸡腿便当", "刀削面", "火锅", "牛肉面", "关东煮"]
    @State private var selectedFood: String?

    var body: some View {
        VStack(spacing: 30) {
            Image("dinner")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("今天吃啥子？")
                .font(.title)
                .bold()
            Text(selectedFood ?? "还没设定")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.green)
            Button("告诉我!") {
                selectedFood = food.shuffled().filter{ $0 != selectedFood}.first
            }.font(.title)
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
