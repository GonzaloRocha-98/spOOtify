Class {
	#name : #Tema,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'genero'
	],
	#category : #'SpOOtify-model'
}

{ #category : #'as yet unclassified' }
Tema class >> conNombre: unNombre [
^self new initializeWithNombre: unNombre
]

{ #category : #'as yet unclassified' }
Tema >> coincide: aString [ 
 ^ (self getNombre) includesSubstring: aString  caseSensitive: false
]

{ #category : #'as yet unclassified' }
Tema >> getNombre [
^nombre
]

{ #category : #'as yet unclassified' }
Tema >> initializeWithNombre: unNombre [ 
nombre:= unNombre .
]
