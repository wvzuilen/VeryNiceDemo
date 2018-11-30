"
I'm a Very Nice Demo !
"
Class {
	#name : #VeryNiceDemo,
	#superclass : #WAComponent,
	#instVars : [
		'request'
	],
	#classInstVars : [
		'cssUrl'
	],
	#category : #VeryNiceDemo
}

{ #category : #accessing }
VeryNiceDemo class >> cssUrl [
	^ cssUrl ifNil: [ 'static/ext.css' ]
]

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
	anHtmlRoot title: 'Very nice demo!'.
	anHtmlRoot stylesheet url: self class cssUrl
]

{ #category : #updating }
VeryNiceDemo >> updateUrl: anUrl [
	super updateUrl: anUrl.
	"anUrl addToPath: 'verynicedemo'"
]
