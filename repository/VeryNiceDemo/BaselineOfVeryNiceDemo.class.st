Class {
	#name : #BaselineOfVeryNiceDemo,
	#superclass : #BaselineOf,
	#category : #VeryNiceDemo
}

{ #category : #baselines }
BaselineOfVeryNiceDemo >> baseline: spec [
	<baseline>

	spec for: #common do: [ 
		spec package: 'VeryNiceDemo' ]
]
