Class {
	#name : #Usuario,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'myMusic'
	],
	#category : #'SpOOtify-model'
}

{ #category : #'as yet unclassified' }
Usuario class >> conNombre: unNombre [
^self new initializeWithNombre: unNombre 
]

{ #category : #'as yet unclassified' }
Usuario >> agregar:aSong [
myMusic add:aSong
]

{ #category : #'as yet unclassified' }
Usuario >> devolverMyMusic [
^myMusic 
]

{ #category : #initialization }
Usuario >> initializeWithNombre: unNombre [ 
nombre:= unNombre.
myMusic:= OrderedCollection new.
]

{ #category : #'as yet unclassified' }
Usuario >> remover: aSong [
myMusic remove: aSong
]
