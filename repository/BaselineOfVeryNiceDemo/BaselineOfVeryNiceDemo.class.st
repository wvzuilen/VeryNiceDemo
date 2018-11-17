Class {
	#name : #BaselineOfVeryNiceDemo,
	#superclass : #BaselineOf,
	#category : #BaselineOfVeryNiceDemo
}

{ #category : #baselines }
BaselineOfVeryNiceDemo >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec package: 'VeryNiceDemo' with: [ spec requires: 'Seaside3' ].
			spec baseline: 'Seaside3' with: [ spec repository: 'github://SeasideSt/Seaside:master/repository' ].
			spec group: 'default' with: #('VeryNiceDemo') ]
]
