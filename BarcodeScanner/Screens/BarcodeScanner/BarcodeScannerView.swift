//
//  BarcodeScannerView.swift
//  BarcodeScanner
//
//  Created by Nazmin Parween on 29/06/24.
//

import SwiftUI

struct BarcodeScannerView: View {
 @StateObject var viewModel = BarcodeScannerViewModel()
    var body: some View{
        NavigationView{
            VStack{
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(maxWidth : .infinity, maxHeight: 300)
                Spacer().frame(height: 60)

                Label("Scanned Barcode: ", systemImage: "barcode.viewfinder")
                    .font(.title)
                Text(viewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(viewModel.statusTextColor)
                    .padding()

            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem){
                alertItem in
                Alert(title: Text(alertItem.title), message: Text(alertItem.message), dismissButton: alertItem.dismissButton)
            }
        }
    }
}

#Preview {
    BarcodeScannerView()
}
