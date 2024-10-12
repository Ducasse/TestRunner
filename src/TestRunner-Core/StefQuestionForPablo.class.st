"
### How to handle the case of the Mock failing tests

With DrTests we get failing tests for dependency tests but not in the TestRunnerUI


### How do we handle timeout and controling different behavior for time out?



### ShouldAccumulate

Why shouldAccumulate is only taken into account for class and package see `NewTestRunne>>#runClass:`


```
runClass: aClass
	""run and return the result of the giving class""

	self shouldAccumulate ifFalse: [ self resetResult ].
	self testSuiteFromClass: aClass.
	self suite name: aClass name.

	self runAll.

	^ result
```

When running a single class or package you can decide to get their results in isolation. 
Else for classes, packages, suite or testcase their results are accumulated.




"
Class {
	#name : 'StefQuestionForPablo',
	#superclass : 'Object',
	#category : 'TestRunner-Core-Core',
	#package : 'TestRunner-Core',
	#tag : 'Core'
}
