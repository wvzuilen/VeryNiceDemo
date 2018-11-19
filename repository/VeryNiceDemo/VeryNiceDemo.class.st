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
	html unorderedList: [ request headers keysAndValuesDo: [ :key :value | html listItem: key , ': ' , value ] ]
]

{ #category : #hooks }
VeryNiceDemo >> style [

^ '* {
	font-size: 10px;
}'
]

{ #category : #updating }
VeryNiceDemo >> updateRoot: anHtmlRoot [
    super updateRoot: anHtmlRoot.
	anHtmlRoot title: 'Very nice demo!'
]
