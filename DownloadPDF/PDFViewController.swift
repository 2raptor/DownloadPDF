//
//  PDFViewController.swift
//  DownloadPDF
//
//  Created by Prabhakar Kasi on 8/22/19.
//  Copyright © 2019 20DayOffice. All rights reserved.
//

import UIKit
import PDFKit

class PDFViewController: UIViewController {
    var pdfView = PDFView()
    var pdfURL: URL?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pdfView.translatesAutoresizingMaskIntoConstraints = false
        if let pdfURL = pdfURL,
            let document = PDFDocument(url: pdfURL) {
            pdfView.document = document
            pdfView.autoScales = true
        }

        view.addSubview(pdfView)

        // Add contstraints
        pdfView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        pdfView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        pdfView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        pdfView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true


        // Close the PDFViewer after 3 seconds until we add close button
//        DispatchQueue.main.asyncAfter(deadline: .now()+3) {
//            self.dismiss(animated: true, completion: nil)
//        }
    }
}
