//
//  Int+TimeInterval.swift
//

import Foundation

public protocol TimeIntervalConvertable {}

extension TimeIntervalConvertable where Self: BinaryInteger {
    public var second: TimeInterval {
        return seconds
    }
    public var seconds: TimeInterval {
        return TimeInterval(self) * 1
    }

    public var minute: TimeInterval {
        return minutes
    }
    public var minutes: TimeInterval {
        return TimeInterval(self) * 60.seconds
    }

    public var hour: TimeInterval {
        return hours
    }
    public var hours: TimeInterval {
        return TimeInterval(self) * 60.minutes
    }

    public var day: TimeInterval {
        return days
    }
    public var days: TimeInterval {
        return TimeInterval(self) * 24.hours
    }

    public var week: TimeInterval {
        return weeks
    }
    public var weeks: TimeInterval {
        return TimeInterval(self) * 7.days
    }
}
