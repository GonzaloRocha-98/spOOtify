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
Tema class >> conOMBRE: unNombre [
^self new initializeWithNombre: unNombre
]

{ #category : #'as yet unclassified' }
Tema >> getGenero [
]

{ #category : #'as yet unclassified' }
Tema >> getNombre [
]

{ #category : #'as yet unclassified' }
Tema >> initializeWithNombre: unNombre withGenero: unGenero [
nombre:= unNombre .
genero:= unGenero 
]
