//
//  ContentView.swift
//  RateCalculator
//
//  Created by Yaswanth Pasupuleti on 19/06/23.
//

import SwiftUI

struct ContentView: View {
//    var names = ["BITSO", "WAZIX" ]
    var body: some View {
        VStack {
            Text("XRP Rate")
                .font(.title)
                .fontWeight(.bold)
            
            Inputs()
//            HStack{
//                ForEach(names, id: \.self) { name in
//                    Inputs(content: name)
//                }
//            }
            .foregroundColor(.black).padding()
            
            
        }
    }
}

struct Inputs: View{
    @State var Pesos: Double = 0.0000
    @State var Bitso: Double = 0.0000
    @State var Wazix: Double = 0.0000
    @State private var numberFormatter: NumberFormatter = {
        var nf = NumberFormatter()
        nf.numberStyle = .decimal
        return nf
    }()
    @State var content : String = ""
    var body: some View{
        
        HStack{
            VStack{
                Text("Wazix")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                TextField(
                    "0.0",
                    value: $Wazix,
                    formatter: numberFormatter
                )
                .frame(width: 150.0, height: 35.0)
                .border(.orange)
                .background(.white)
                .multilineTextAlignment(.center)
            }
            VStack{
                Text("Bitso")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                TextField(
                    "",
                    value: $Bitso,
                    formatter: numberFormatter
                )
                .frame(width: 150.0, height: 35.0)
                .border(.orange)
                .background(.white)
                .multilineTextAlignment(.center)
            }
        }
        
        VStack{
            Text("Pesos")
                .font(.headline)
                .foregroundColor(.gray)
                .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            TextField(
                "",
                value: $Pesos,
                formatter: numberFormatter
            )
            .frame(width: 150.0, height: 35.0)
            .border(.orange)
            .background(.white)
            .multilineTextAlignment(.center)
        }
        let a: Double = (( Wazix / (Bitso + 0.15)) - (Wazix/(Bitso + 0.15)*0.016))
        let amount = Pesos * a
        Text("\(a)")
            .font(.largeTitle)
            .foregroundColor(.gray)
            .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        Text("\(amount)")
            .font(.largeTitle)
            .foregroundColor(.gray)
            .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//        VStack{
//            Text(content)
//                .font(.headline)
//                .foregroundColor(.gray)
//                .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
//                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//            TextField(
//                (content),
//                text: $username
//            )
//            .frame(width: 150.0, height: 35.0)
//            .border(.orange)
//            .background(.white)
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
    }
}
