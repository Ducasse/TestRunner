Class {
	#name : 'YellowTest',
	#superclass : 'MockTest',
	#category : 'TestRunner-Tests-Utilities-Test',
	#package : 'TestRunner-Tests',
	#tag : 'Utilities-Test'
}

{ #category : 'tests' }
YellowTest >> testMayFail [

	self shouldBeIgnored ifTrue: [ ^ self ].
	self assert: false
]

{ #category : 'tests' }
YellowTest >> testPass [
	self assert: true.
]
