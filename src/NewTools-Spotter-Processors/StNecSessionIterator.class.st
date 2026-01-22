Class {
	#name : 'StNecSessionIterator',
	#superclass : 'StGenericGenerator',
	#instVars : [
		'fetcher'
	],
	#category : 'NewTools-Spotter-Processors-Iterators',
	#package : 'NewTools-Spotter-Processors',
	#tag : 'Iterators'
}

{ #category : 'accessing' }
StNecSessionIterator class >> fetcher: aSequenceableCollection [

	^ self basicNew
		fetcher: aSequenceableCollection;
		initialize;
		yourself
]

{ #category : 'enumerating' }
StNecSessionIterator >> elementsDo: aBloc [

	fetcher entriesDo: [ :necEntry |
		Smalltalk
			at: necEntry contents asSymbol
			ifPresent: [ :class | 
				class isClass
					ifTrue: [ aBloc value: (StClassEntry on: class)] ] ]
]

{ #category : 'accessing' }
StNecSessionIterator >> fetcher [

	^ fetcher
]

{ #category : 'accessing' }
StNecSessionIterator >> fetcher: anObject [

	fetcher := anObject
]
