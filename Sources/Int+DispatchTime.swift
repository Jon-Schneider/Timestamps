//
//  Int+DispatchTime.swift
//

import Foundation

public protocol DispatchTimeConvertable {}

extension DispatchTimeConvertable where Self: BinaryInteger & DispatchTimeIntervalConvertable {
    public var nanosecond: DispatchTime {
        return nanoseconds
    }
    public var nanoseconds: DispatchTime {
        return DispatchTime.now() + self.nanoseconds
    }

    public var microsecond: DispatchTime {
        return microseconds
    }
    public var microseconds: DispatchTime {
        return DispatchTime.now() + self.microseconds
    }

    public var millisecond: DispatchTime {
        return milliseconds
    }
    public var milliseconds: DispatchTime {
        return DispatchTime.now() + self.milliseconds
    }

    public var second: DispatchTime {
        return seconds
    }
    public var seconds: DispatchTime {
        return DispatchTime.now() + self.seconds
    }
}
