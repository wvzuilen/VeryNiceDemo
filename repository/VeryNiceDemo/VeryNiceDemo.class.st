Class {
	#name : #VeryNiceDemo,
	#superclass : #WAComponent,
	#category : #VeryNiceDemo
}

{ #category : #rendering }
VeryNiceDemo >> renderContentOn: html [
	html paragraph: 'Date: ' , Date today asString.
	html paragraph: 'Time:   ' , Time now print24
]
