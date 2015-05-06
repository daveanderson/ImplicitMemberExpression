# Implicit Member Expression Compiler Crash

## Background

https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Expressions.html describes in the section "Implicit Member Expression" that

> An implicit member expression is an abbreviated way to access a member of a type, such as an enumeration case or *a type method*, in a context where type inference can determine the implied type


While https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Methods.html states

> Classes, structures, and enumerations can also define *type methods*, which are associated with the type itself. Type methods are *similar to class methods* in Objective-C.

## Summary

Thus it is expected that the UIButton method

`func setTitleColor(color: UIColor?, forState state: UIControlState)`

should be callable as follows, assuming a `UIButton` instance of `redButton`

`redButton.setTitleColor(.redColor(), forState: .Normal)`

Currently, as of Xcode 6.3.1 (6D1002), this statement will cause `swiftc` to crash.



## Steps to Reproduce
Open `ImplicitMemberExpression.playground` in Xcode 6.3.1 (6D1002) and uncomment the line

`// button.setTitleColor(.whiteColor(), forState: .Normal)`


## Expected Results
UIKit methods with explicit type parameters (e.g. not AnyObject) should work with Implicit Member Expressions without causing compiler crashes, even if the type parameter is optional.
