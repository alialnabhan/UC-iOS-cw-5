//
//  ContentView.swift
//  Class work 5
//
//  Created by MAC on 02/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State var height = ""
    @State var weight = ""
    @State var resulte = 0.0
    var body: some View {
        VStack{
            Image("mz")
        
        Text("ادخل الطول و الوزن")
                .font(.system(size: 40))
            .padding()
            
            TextField("ادخل الطول", text : $height)
                .font(.system(size: 40))
                .frame(width: 200, height: 50)
            TextField("ادخل الوزن", text : $weight)
                .font(.system(size: 40))
                .frame(width: 200, height: 50)
            Text("احسب")
                .frame(width: 250, height: 80)
                .background(Color.gray)
                .clipShape(Capsule())
                .font(.system(size: 40))
                .onTapGesture {
                    resulte = calc(weight: weight, height: height)
                }
            Text(String(format: "BMI = %.2f", resulte))
                .font(.system(size: 30))
                Text(" الحالة = \(checkStatus(result: resulte))")
                .font(.system(size: 30))
                
                
                }
            
            
    }
    func calc (weight : String , height : String) -> Double {
        return (Double(weight) ?? 0.0) / ((Double(height) ?? 0.0) * (Double(height) ?? 0.0 ))
    }
    func checkStatus(result: Double) -> String {
        if result <= 20 {
            return "ضعيف"
        } else if result <= 25 {
            return "جيد"
        }
        else {
            return "سمين"
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
