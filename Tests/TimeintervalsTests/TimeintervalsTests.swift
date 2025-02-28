import XCTest

// Timeintervals is intentionally not imported @testable because we want the tests to break if there is an issue with the public interface
import Timeintervals

final class TimeIntervalsTests: XCTestCase {
    func testIntTimeIntervalExtensions() throws {
        // Test singular forms
        XCTAssertEqual(1.second, 1.0)
        XCTAssertEqual(1.minute, 60.0)
        XCTAssertEqual(1.hour, 3600.0)
        XCTAssertEqual(1.day, 86400.0)
        XCTAssertEqual(1.week, 604800.0)

        XCTAssertEqual(3.seconds, 3.0)
        XCTAssertEqual(3.minutes, 180.0)
        XCTAssertEqual(3.hours, 10800.0)
        XCTAssertEqual(3.days, 259200.0)
        XCTAssertEqual(3.weeks, 1814400.0)
    }

    func testIntDispatchTimeExtensions() throws {
        XCTAssertEqual(1.nanosecond, DispatchTimeInterval.nanoseconds(1))
        XCTAssertEqual(1.microsecond, DispatchTimeInterval.microseconds(1))
        XCTAssertEqual(1.millisecond, DispatchTimeInterval.milliseconds(1))
        XCTAssertEqual(1.second, DispatchTimeInterval.seconds(1))

        XCTAssertEqual(3.nanoseconds, DispatchTimeInterval.nanoseconds(3))
        XCTAssertEqual(3.microseconds, DispatchTimeInterval.microseconds(3))
        XCTAssertEqual(3.milliseconds, DispatchTimeInterval.milliseconds(3))
        XCTAssertEqual(3.seconds, DispatchTimeInterval.seconds(3))
    }
}
