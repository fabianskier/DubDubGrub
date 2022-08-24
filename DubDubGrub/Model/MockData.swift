//
//  MockData.swift
//  DubDubGrub
//
//  Created by Oscar Cristaldo on 2022-08-24.
//

import CloudKit

struct MockData {
    
    static var location: CKRecord {
        let record = CKRecord(recordType: RecordType.location)
        record[DDGLocation.kName]           = "La Vienesa"
        record[DDGLocation.kAddress]        = "Rca. Dominicana 480, Asunción"
        record[DDGLocation.kDescription]    = "La Vienesa® ha aportado de generación en generación su dulzura a la felicidad de muchos asuncenos, y gracias a la innovación permanente se renueva de acuerdo a las necesidades y gustos de sus clientes."
        record[DDGLocation.kWebsiteURL]     = "https://lavienesa.com.py/web/"
        record[DDGLocation.kLocation]       = CLLocation(latitude: -25.288261301329975, longitude: -57.604357751971385)
        record[DDGLocation.kPhoneNumber]    = "0217290009"
        
        return record
    }
}
