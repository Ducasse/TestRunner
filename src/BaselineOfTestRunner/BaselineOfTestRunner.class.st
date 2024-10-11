Class {
	#name : 'BaselineOfTestRunner',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfTestRunner',
	#package : 'BaselineOfTestRunner'
}

{ #category : 'baselines' }
BaselineOfTestRunner >> baseline: spec [
	<baseline>


		spec 
			package: #'TestRunner-Core';
			package: #'TestRunner-Tests' with: [
				spec requires: #(#'TestRunner-Core'). ];
			
			package: #'TestRunner-UI';
			package: #'TestRunner-UI-Tests' with: [
				spec requires: #(#'TestRunner-UI'). ].
		spec 
			group: 'Core' with: #(#'TestRunner-Core' );
			group: 'CoreTests' with: #(#'TestRunner-Core' #'TestRunner-Tests');
			group: 'UI' with: #(#'TestRunner-UI-Tests' #'TestRunner-UI');
			group: 'default' with: #('CoreTests')
]
