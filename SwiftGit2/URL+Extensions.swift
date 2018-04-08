//
//  URL+Extensions.swift
//  SwiftGit2
//
//  Created by Alex on 8/4/18.
//  Copyright © 2018 GitHub, Inc. All rights reserved.
//

import Foundation

extension URL {
	
	/// Compatibility shim
	///
	/// - Returns: Returns value from NSURL if compiled on Apple platforms. Returns false on Linux.
	func isFileReferenceURL() -> Bool {
		#if os(Linux)
		return false
		#else
		return (self as NSURL).isFileReferenceURL()
		#endif
	}
}
