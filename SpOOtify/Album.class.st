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
Album >> buscarPorGenero: aString [

]

{ #category : #initialization }
Album >> buscarPorTitulo: aString [

]

{ #category : #initialization }
Album >> devolverTemas [
]

{ #category : #initialization }
Album >> initializeWithNombre: unNombre [
nombre:= unNombre.
temas:= OrderedCollection new.
]
