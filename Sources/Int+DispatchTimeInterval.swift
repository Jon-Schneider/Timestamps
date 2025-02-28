//
//  Int+DispatchTimeInterval.swift
//

import Foundation

public protocol DispatchTimeIntervalConvertable {}

extension DispatchTimeIntervalConvertable where Self: BinaryInteger {
    public var nanosecond: DispatchTimeInterval {
        return nanoseconds
    }
    public var nanoseconds: DispatchTimeInterval {
        return .nanoseconds(Int(self))
    }

    public var microsecond: DispatchTimeInterval {
        return microseconds
    }
    public var microseconds: DispatchTimeInterval {
        return .microseconds(Int(self))
    }

    public var millisecond: DispatchTimeInterval {
        return milliseconds
    }
    public var milliseconds: DispatchTimeInterval {
        return .milliseconds(Int(self))
    }

    public var second: DispatchTimeInterval {
        return seconds
    }
    public var seconds: DispatchTimeInterval {
        return .seconds(Int(self))
    }
}
