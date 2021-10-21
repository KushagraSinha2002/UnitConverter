//
//  ContentView.swift
//  ChallengeDay1
//
//  Created by Kushagra Sinha on 21/10/21.
//
//  Challenge Day 1 100 Days Of SwiftUI

import SwiftUI

struct ContentView: View {
    
    @State private var conversionType = "Volume"
    @State private var temperatureUnit = "°C"
    @State private var lengthUnit = "m"
    @State private var timeUnit = "s"
    @State private var volumeUnit = "mL"
    @FocusState private var valueIsFocused: Bool
    @State private var value = ""
    
    let conversionTypes = ["Temperature","Length","Time","Volume"]
    
    let temperatureUnits = ["°C", "°F", "K"]
    let lengthUnits = ["m" ,"km" ,"ft" ,"yd" ,"mi"]
    let timeunits = ["s", "min", "h", "d"]
    let volumeUnits = ["mL", "L", "cup", "pt", "gal"]
    
    @State private var selectedTemperatureUnit = "°C"
    @State private var selectedLengthUnit = "m"
    @State private var selectedTimeUnit = "s"
    @State private var selectedVolumeUnit = "mL"
    
    var temperatureFormula: Double {
        
        var tempConverted: Double = 0.0
        
        if(temperatureUnit == "°C") {
            let celsius = Double(value) ?? 0
            
            if(selectedTemperatureUnit == "°F") {
                
                //(0°C × 9/5) + 32 = 32°F
                tempConverted = (celsius * 1.8) + 32
                
            }
            
            else if(selectedTemperatureUnit == "K") {
                
                //0°C + 273.15 = 273.15K
                tempConverted = celsius + 273.15
            }
            
            else {
                tempConverted = Double(value) ?? 0
            }
        }
        
        else if(temperatureUnit == "°F") {
            let farehnite = Double(value) ?? 0
            
            if(selectedTemperatureUnit == "°C") {
                
                //(32°F − 32) × 5/9 = 0°C
                tempConverted = (farehnite - 32) * (5/9)
                
            }
            else if(selectedTemperatureUnit == "K") {
                
                //(32°F − 32) × 5/9 + 273.15 = 273.15K
                tempConverted = ((farehnite - 32) * (5/9)) + 273.15
            }
            else {
                tempConverted = Double(value) ?? 0
            }
            
        }
        
        else if(temperatureUnit == "K") {
            let kelvin = Double(value) ?? 0
            
            if(selectedTemperatureUnit == "°F") {
                
                //(0K − 273.15) × 9/5 + 32 = -459.7°F
                tempConverted = (kelvin - 273.15) * (9/5) + 32
                
            }
            else if(selectedTemperatureUnit == "°C") {
                
                //0K − 273.15 = -273.1°C
                tempConverted = kelvin - 273.15
            }
            else {
                tempConverted = Double(value) ?? 0
            }
        }
        
        return tempConverted
    }
    
    var lengthFormula: Double {
        
        var lengthConverted: Double = 0.0
        
        if(lengthUnit == "m") {
            let meter = Double(value) ?? 0
            if(selectedLengthUnit == "km") {
                
                //divide the length value by 1000
                lengthConverted = meter / 1000
            }
            else if(selectedLengthUnit == "ft") {
                
                //multiply the length value by 3.281
                lengthConverted = meter * 3.281
            }
            else if(selectedLengthUnit == "yd") {
                
                //multiply the length value by 1.094
                lengthConverted = meter * 1.094
            }
            else if(selectedLengthUnit == "mi") {
                
                //divide the length value by 1609
                lengthConverted = meter / 1609
            }
            else {
                lengthConverted = Double(value) ?? 0
            }
        }
        
        else if(lengthUnit == "km") {
            let kilometer = Double(value) ?? 0
            if(selectedLengthUnit == "m") {
                
                //multiply the length value by 1000
                lengthConverted = kilometer * 1000
            }
            else if(selectedLengthUnit == "ft") {
                
                //multiply the length value by 3281
                lengthConverted = kilometer * 3281
            }
            else if(selectedLengthUnit == "yd") {
                //multiply the length value by 1094
                lengthConverted = kilometer * 1094
            }
            else if(selectedLengthUnit == "mi") {
                
                //divide the length value by 1.609
                lengthConverted = kilometer / 1.609
            }
            else {
                lengthConverted = Double(value) ?? 0
            }
        }
        
        else if(lengthUnit == "ft") {
            let feet = Double(value) ?? 0
            
            if(selectedLengthUnit == "m") {
                
                //divide the length value by 5280
                lengthConverted = feet / 5280
            }
            else if(selectedLengthUnit == "km") {
                
                //divide the length value by 3281
                lengthConverted = feet / 3281
            }
            else if(selectedLengthUnit == "yd") {
                
                //divide the length value by 3
                lengthConverted = feet / 3
            }
            else if(selectedLengthUnit == "mi") {
                
                //divide the length value by 5280
                lengthConverted = feet / 5280
            }
            else {
                lengthConverted = Double(value) ?? 0
            }
        }
        
        else if(lengthUnit == "yd") {
            let yard = Double(value) ?? 0
            
            if(selectedLengthUnit == "m") {
                
                //divide the length value by 1.094
                lengthConverted = yard / 1.094
            }
            else if(selectedLengthUnit == "ft") {
                
                //multiply the length value by 3
                lengthConverted = yard * 3
            }
            else if(selectedLengthUnit == "km") {
                
                //divide the length value by 1094
                lengthConverted = yard / 1094
            }
            else if(selectedLengthUnit == "mi") {
                
                //divide the length value by 1760
                lengthConverted = yard / 1760
            }
            else {
                lengthConverted = Double(value) ?? 0
            }
        }
        
        else if(lengthUnit == "mi") {
            let miles = Double(value) ?? 0
            
            if(selectedLengthUnit == "m") {
                //multiply the length value by 1609
                lengthConverted = miles * 1609
            }
            else if(selectedLengthUnit == "ft") {
                //multiply the length value by 5280
                lengthConverted = miles * 5280
            }
            else if(selectedLengthUnit == "yd") {
                //multiply the length value by 1760
                lengthConverted = miles * 1760
            }
            else if(selectedLengthUnit == "km") {
                //multiply the length value by 1.609
                lengthConverted = miles * 1.609
            }
            else {
                lengthConverted = Double(value) ?? 0
            }
        }
        
        return lengthConverted
        
    }
    
    var timeFormula: Double {
        var timeConverted: Double = 0.0
        
        if(timeUnit == "s") {
            let seconds = Double(value) ?? 0
            if(selectedTimeUnit == "min") {
                //divide the time value by 60
                timeConverted = seconds / 60
            }
            else if(selectedTimeUnit == "h") {
                //divide the time value by 3600
                timeConverted = seconds / 3600
            }
            else if(selectedTimeUnit == "d") {
                //divide the time value by 86400
                timeConverted = seconds / 86400
            }
            else {
                timeConverted = Double(value) ?? 0
            }
        }
        
        else if(timeUnit == "min") {
            let minutes = Double(value) ?? 0
            
            if(selectedTimeUnit == "s") {
                //multiply the time value by 60
                timeConverted = minutes * 60
            }
            else if(selectedTimeUnit == "h") {
                //divide the time value by 60
                timeConverted = minutes / 60
            }
            else if(selectedTimeUnit == "d") {
                //divide the time value by 1440
                timeConverted = minutes / 1440
            }
            else {
                timeConverted = Double(value) ?? 0
            }
        }
        
        else if(timeUnit == "h") {
            let hours = Double(value) ?? 0
            
            if(selectedTimeUnit == "min") {
                //multiply the time value by 60
                timeConverted = hours * 60
            }
            else if(selectedTimeUnit == "s") {
                //multiply the time value by 3600
                timeConverted = hours * 3600
            }
            else if(selectedTimeUnit == "d") {
                //divide the time value by 24
                timeConverted = hours / 24
            }
            else {
                timeConverted = Double(value) ?? 0
            }
        }
        
        else if(timeUnit == "d") {
            let day = Double(value) ?? 0
            if(selectedTimeUnit == "min") {
                //multiply the time value by 1440
                timeConverted = day * 1440
            }
            else if(selectedTimeUnit == "h") {
                //multiply the time value by 24
                timeConverted = day * 24
            }
            else if(selectedTimeUnit == "s") {
                //multiply the time value by 86400
                timeConverted = day * 86400
            }
            else {
                timeConverted = Double(value) ?? 0
            }
        }
        
        return timeConverted
    }
    
    var volumeFormula: Double {
        var volumeConverted: Double = 0.0
        
        if(volumeUnit == "mL") {
            let milliliter = Double(value) ?? 0
            if(selectedVolumeUnit == "L") {
                //divide the volume value by 1000
                volumeConverted = milliliter / 1000
            }
            else if(selectedVolumeUnit == "cup") {
                //divide the volume value by 240
                volumeConverted = milliliter / 240
            }
            else if(selectedVolumeUnit == "pt") {
                //divide the volume value by 568
                volumeConverted = milliliter / 473
            }
            else if(selectedVolumeUnit == "gal") {
                //divide the volume value by 3785
                volumeConverted = milliliter / 3785
            }
            else {
                volumeConverted = Double(value) ?? 0
            }
        }
        
        else if(volumeUnit == "L") {
            let Liter = Double(value) ?? 0
            if(selectedVolumeUnit == "mL") {
                //multiply the volume value by 1000
                volumeConverted = Liter * 1000
            }
            else if(selectedVolumeUnit == "cup") {
                //multiply the volume value by 4.167
                volumeConverted = Liter * 4.167
            }
            else if(selectedVolumeUnit == "pt") {
                //multiply the volume value by 2.113
                volumeConverted = Liter * 2.113
            }
            else if(selectedVolumeUnit == "gal") {
                //divide the volume value by 3.785
                volumeConverted = Liter / 3.785
            }
            else {
                volumeConverted = Double(value) ?? 0
            }
        }
        
        else if(volumeUnit == "cup") {
            let Cup = Double(value) ?? 0
            if(selectedVolumeUnit == "mL") {
                //multiply the volume value by 240
                volumeConverted = Cup * 240
            }
            else if(selectedVolumeUnit == "L") {
                //divide the volume value by 4.167
                volumeConverted = Cup / 4.167
            }
            else if(selectedVolumeUnit == "pt") {
                //divide the volume value by 1.972
                volumeConverted = Cup / 1.972
            }
            else if(selectedVolumeUnit == "gal") {
                //divide the volume value by 15.773
                volumeConverted = Cup / 15.773
            }
            else {
                volumeConverted = Double(value) ?? 0
            }
        }
        
        else if(volumeUnit == "pt") {
            let pt = Double(value) ?? 0
            if(selectedVolumeUnit == "mL") {
                //multiply the volume value by 473
                volumeConverted = pt * 473
            }
            else if(selectedVolumeUnit == "L") {
                //divide the volume value by 2.113
                volumeConverted = pt / 2.113
            }
            else if(selectedVolumeUnit == "cup") {
                // multiply the volume value by 1.972
                volumeConverted = pt * 1.972
            }
            else if(selectedVolumeUnit == "gal") {
                //divide the volume value by 8
                volumeConverted = pt / 8
            }
            else {
                volumeConverted = Double(value) ?? 0
            }
        }
        
        else if(volumeUnit == "gal") {
            let gal = Double(value) ?? 0
            if(selectedVolumeUnit == "mL") {
                //multiply the volume value by 3785
                volumeConverted = gal * 3785
            }
            else if(selectedVolumeUnit == "L") {
                //multiply the volume value by 3.785
                volumeConverted = gal * 3.785
            }
            else if(selectedVolumeUnit == "cup") {
                //multiply the volume value by 15.773
                volumeConverted = gal * 15.773
            }
            else if(selectedVolumeUnit == "pt") {
                //multiply the volume value by 8
                volumeConverted = gal * 8
            }
            else {
                volumeConverted = Double(value) ?? 0
            }
        }
        
        return volumeConverted
    }
    
    
    
    var body: some View {
        NavigationView {
            Form {
                
                //Choose Conversion Type
                Section {
                    Picker("Units",selection: $conversionType) {
                        ForEach(conversionTypes, id: \.self) {
                            Text($0)
                        }
                    } .pickerStyle(.wheel)
                } header: {
                    Text("Conversion type :")
                }
                
                //Choose Unit Type
                Section {
                    
                    //Conversion
                    TextField("Enter value", text: $value)
                        .keyboardType(.decimalPad)
                        .focused($valueIsFocused)
                    
                    //Temperature
                    if(conversionType == "Temperature") {
                        
                        Picker("Temperature units", selection: $temperatureUnit) {
                            ForEach(temperatureUnits, id: \.self) {
                                Text($0)
                            }
                        } .pickerStyle(.segmented)
                    }
                    
                    //Length
                    if(conversionType == "Length") {
                        
                        Picker("Length units", selection: $lengthUnit) {
                            ForEach(lengthUnits, id: \.self) {
                                Text($0)
                            }
                        } .pickerStyle(.segmented)
                    }
                    
                    //Time
                    if(conversionType == "Time") {
                        
                        Picker("Time units", selection: $timeUnit) {
                            ForEach(timeunits, id: \.self) {
                                Text($0)
                            }
                        } .pickerStyle(.segmented)
                    }
                    
                    //Volume
                    if(conversionType == "Volume") {
                        
                        Picker("Volume units", selection: $volumeUnit) {
                            ForEach(volumeUnits, id: \.self) {
                                Text($0)
                            }
                        } .pickerStyle(.segmented)
                    }
                    
                }
                
                Section {
                    
                    //Temperature
                    if(conversionType == "Temperature") {
                        
                        //Conversion
                        Text("\(temperatureFormula)")
                        
                        Picker("Temperature units", selection: $selectedTemperatureUnit) {
                            ForEach(temperatureUnits, id: \.self) {
                                Text($0)
                            }
                        } .pickerStyle(.segmented)
                    }
                    
                    //Length
                    if(conversionType == "Length") {
                        
                        //Conversion
                        Text("\(lengthFormula)")
                        
                        Picker("Length units", selection: $selectedLengthUnit) {
                            ForEach(lengthUnits, id: \.self) {
                                Text($0)
                            }
                        } .pickerStyle(.segmented)
                    }
                    
                    //Time
                    if(conversionType == "Time") {
                        
                        //Conversion
                        Text("\(timeFormula)")
                        
                        Picker("Time units", selection: $selectedTimeUnit) {
                            ForEach(timeunits, id: \.self) {
                                Text($0)
                            }
                        } .pickerStyle(.segmented)
                    }
                    
                    //Volume
                    if(conversionType == "Volume") {
                        
                        //Conversion
                        Text("\(volumeFormula)")
                        
                        Picker("Volume units", selection: $selectedVolumeUnit) {
                            ForEach(volumeUnits, id: \.self) {
                                Text($0)
                            }
                        } .pickerStyle(.segmented)
                    }
                }
                
                
            }
            .navigationTitle("Converter")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    
                    Button("Done") {
                        valueIsFocused = false
                    }
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
