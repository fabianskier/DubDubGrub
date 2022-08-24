//
//  CKRecord+Extension.swift
//  DubDubGrub
//
//  Created by Oscar Cristaldo on 2022-08-24.
//

import CloudKit

extension CKRecord {
    func convertToDDGLocation() -> DDGLocation { DDGLocation(record: self) }
    func convertToDDGProfile() -> DDGProfile { DDGProfile(record: self) }
}
