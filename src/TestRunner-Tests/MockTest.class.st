"
Don't edit these classes. They are used else where for tests. Changing anything can make some tests fail
"
Class {
	#name : 'MockTest',
	#superclass : 'TestCase',
	#classInstVars : [
		'ignore'
	],
	#category : 'TestRunner-Tests-Utilities-Test',
	#package : 'TestRunner-Tests',
	#tag : 'Utilities-Test'
}

{ #category : 'accessing' }
MockTest class >> ignoreMayFailTests [

	ignore := false
]

{ #category : 'class initialization' }
MockTest class >> initialize [
	<script>
	
	self ignoreMayFailTests 
]

{ #category : 'accessing' }
MockTest class >> makeMayFailTestsFail [

	ignore := false
]

{ #category : 'accessing' }
MockTest class >> shouldBeIgnored [

	^ ignore ifNil: [ ignore := true ]
]

{ #category : 'asserting' }
MockTest >> ignoreMayFailTests [ 

	self class ignoreMayFailTests
]

{ #category : 'asserting' }
MockTest >> makeMayFailTestsFail [

	self class makeMayFailTestsFail
]

{ #category : 'asserting' }
MockTest >> shouldBeIgnored [

	^ self class shouldBeIgnored
]
