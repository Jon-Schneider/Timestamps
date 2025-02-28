## Timeintervals

**Ruby-style convenience accessors for TimeInterval and DispatchTime in Swift!**

This is a small package of convenience extensions for Int to make using `TimeInterval`, `DispatchTimeInterval`, and `DispatchTime` easy and readable, inspired by Ruby's `Date` syntax.

Are you tired of this?

```swift
DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
  // ...
}
```

And this?

```swift
Task(priority: priority) {
  let delay = UInt64(delayInterval * 1_000_000_000)
	sleep(nanoseconds: delay)

  // ...
}
```



How about this instead?

```swift
DispatchQueue.main.asyncAfter(deadline: 5.seconds) {
  // ...
}

Task(priority: priority) {
	sleep(nanoseconds: 1.second)

  // ...
}
```

Just import this package into any module you want these convenience initializers.



If you notice any bugs I would appreciate it if you would open an issue or submit a pull request and I'll get the fix in ASAP.

### Tests

You can open the Package as an Xcode project and run the tests by cloning this repo and then running the command `open Package.swift" from the project root.