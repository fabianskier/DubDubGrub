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
    
    static var profile: CKRecord {
        let record = CKRecord(recordType: RecordType.profile)
        record[DDGProfile.kFirstName]       = "Oscar"
        record[DDGProfile.kLastName]        = "Cristaldo"
        record[DDGProfile.kCompanyName]     = "@anskitech"
        record[DDGProfile.kBio]             = "Enthusiastic software developer, F1 and ski lover."

        return record
    }
    
    static var chipotle: CKRecord {
            let record                          = CKRecord(recordType: RecordType.location,
                                                           recordID: CKRecord.ID(recordName: "F7EA2B38-704C-93D8-CD4B-1FA3D376912F"))
            record[DDGLocation.kName]           = "Chipotle"
            record[DDGLocation.kAddress]        = "1 S Market St Ste 40"
            record[DDGLocation.kDescription]    = "Our local San Jose One South Market Chipotle Mexican Grill is cultivating a better world by serving responsibly sourced, classically-cooked, real food."
            record[DDGLocation.kWebsiteURL]     = "https://locations.chipotle.com/ca/san-jose/1-s-market-st"
            record[DDGLocation.kLocation]       = CLLocation(latitude: 37.334967, longitude: -121.892566)
            record[DDGLocation.kPhoneNumber]    = "408-938-0919"
            
            return record
        }
}
