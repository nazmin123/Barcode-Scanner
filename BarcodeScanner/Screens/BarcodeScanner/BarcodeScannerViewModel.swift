//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Nazmin Parween on 29/06/24.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
@Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    var statusText : String {
        scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }

    var statusTextColor : Color {
        scannedCode.isEmpty ? .red : .green
    }
}

//#Preview {
//    BarcodeScannerViewModel()
//}
