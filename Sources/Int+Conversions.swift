//
//  Int+Conversinos.swift
//

import Foundation

// Swift does not allow you override properties on a type with different return types.
// To work around this, the convenience functions are defined in extensions.
// Since calls to extension methods are statically dispatched we can create as many overloads as we want.
extension Int: TimeIntervalConvertable, DispatchTimeConvertable, DispatchTimeIntervalConvertable {}
