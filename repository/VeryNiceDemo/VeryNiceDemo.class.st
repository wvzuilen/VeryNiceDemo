Class {
	#name : #VeryNiceDemo,
	#superclass : #WAComponent,
	#instVars : [
		'request'
	],
	#category : #VeryNiceDemo
}

{ #category : #initialization }
VeryNiceDemo >> initialize [
	super initialize.
	request := self requestContext request copy
]

{ #category : #rendering }
VeryNiceDemo >> renderContentOn: html [
	html paragraph: 'Date: ' , Date today asString.
	html paragraph: 'Time:   ' , Time now print24.
	html paragraph: 'Platform name: ' , OSPlatform currentPlatformName.
	html paragraph: 'Platform version: ' , OSPlatform currentVersion.
	html paragraph: 'Server port: ' , (request headers at: 'X-Forwarded-Port' ifAbsent: [ '' ]).
]

{ #category : #updating }
VeryNiceDemo >> updateRoot: anHtmlRoot [
    super updateRoot: anHtmlRoot.
	anHtmlRoot title: 'Very nice demo!'
]
