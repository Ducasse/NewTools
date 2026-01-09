Class {
	#name : 'StPlaygroundSaveVersionCommand',
	#superclass : 'StPlaygroundCommand',
	#category : 'NewTools-Playground-Command',
	#package : 'NewTools-Playground',
	#tag : 'Command'
}

{ #category : 'accessing' }
StPlaygroundSaveVersionCommand class >> defaultDescription [

	^ 'To force save the page'
]

{ #category : 'accessing' }
StPlaygroundSaveVersionCommand class >> defaultIconName [

	^ #save
]

{ #category : 'accessing' }
StPlaygroundSaveVersionCommand class >> defaultName [

	^ 'Save'
]

{ #category : 'executing' }
StPlaygroundSaveVersionCommand >> execute [

	self context ensureContentsFlushed 
]
