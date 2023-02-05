//
//  EcoFlowDevice.swift
//  EcoFlow
//
// Created by Viktoria on 01.02.2023.
//

import Foundation


class EcoFlowDevice {
    var name: String
    var serialNumber: String
    var imageName: String
    var statusConnect: String
    
    init(name: String, serialNumber: String, imageName: String, statusConnect: String) {
        self.name = name
        self.serialNumber = serialNumber
        self.imageName = imageName
        self.statusConnect = statusConnect
    }
}
