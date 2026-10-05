"
I am a scope of commits the user can browse in the repository page. My subclasses know their own label and icon, and I am the seam through which branch/tag filtering will later restrict the displayed commits.
"
Class {
	#name : 'RiScope',
	#superclass : 'Object',
	#category : 'Rita-UI-Models',
	#package : 'Rita-UI',
	#tag : 'Models'
}

{ #category : 'instance creation' }
RiScope class >> forMark: aRiMark [

	aRiMark isBranchMark ifTrue: [ ^ RiBranchScope branchMark: aRiMark ].
	aRiMark isTagMark ifTrue: [ ^ RiTagScope tagMark: aRiMark ].
	self error: 'Cannot create a scope for ' , aRiMark printString
]

{ #category : 'accessing' }
RiScope >> iconName [

	^ self subclassResponsibility
]

{ #category : 'accessing' }
RiScope >> iconTransform [
	"Answer the axis along which my icon must be flipped when rendered, or nil when no flip is needed."

	^ nil
]

{ #category : 'accessing' }
RiScope >> label [

	^ self subclassResponsibility
]

{ #category : 'accessing' }
RiScope >> mark [
	"Answer the mark this scope stands for, or nil when it is not a single branch or tag (the local clone scope)."

	^ nil
]
