Class {
	#name : #Album,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'temas'
	],
	#category : #'SpOOtify-model'
}

{ #category : #'as yet unclassified' }
Album class >> conNombre:unNombre [
^self new initializeWithNombre: unNombre
]

{ #category : #'as yet unclassified' }
Album >> agregarTema: unTema [
temas add: unTema
]

{ #category : #initialization }
Album >> buscarPorTitulo: aString [
^(self devolverTemas ) select:[:tema | tema coincide: aString ]
]

{ #category : #'as yet unclassified' }
Album >> coincide: aString [ 
^(self getNombre) includesSubstring: aString caseSensitive: false

]

{ #category : #initialization }
Album >> devolverTemas [
^temas
]

{ #category : #'as yet unclassified' }
Album >> getNombre [ 
^nombre

]

{ #category : #initialization }
Album >> initializeWithNombre: unNombre [
nombre:= unNombre.
temas:= OrderedCollection new.
]
