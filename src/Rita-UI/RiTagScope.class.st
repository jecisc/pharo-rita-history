"
I am the scope that restricts the displayed commits to a tag, represented by a RiTagMark.
"
Class {
	#name : 'RiTagScope',
	#superclass : 'RiScope',
	#instVars : [
		'tagMark'
	],
	#category : 'Rita-UI-Models',
	#package : 'Rita-UI',
	#tag : 'Models'
}

{ #category : 'instance creation' }
RiTagScope class >> tagMark: aRiTagMark [

	^ self new tagMark: aRiTagMark
]

{ #category : 'accessing' }
RiTagScope >> iconName [

	^ #breakpoint
]

{ #category : 'accessing' }
RiTagScope >> iconTransform [

	^ #horizontal
]

{ #category : 'accessing' }
RiTagScope >> label [

	^ tagMark name
]

{ #category : 'accessing' }
RiTagScope >> mark [

	^ tagMark
]

{ #category : 'accessing' }
RiTagScope >> tagMark [

	^ tagMark
]

{ #category : 'accessing' }
RiTagScope >> tagMark: aRiTagMark [

	tagMark := aRiTagMark
]
