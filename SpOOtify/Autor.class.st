Class {
	#name : #Autor,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'albumes'
	],
	#category : #'SpOOtify-model'
}

{ #category : #'as yet unclassified' }
Autor class >> conNombre: unNombre [ 
^self new initializeWithNombre: unNombre 
]

{ #category : #'as yet unclassified' }
Autor >> agregarAlbum: unAlbum [
albumes add:unAlbum
]

{ #category : #'as yet unclassified' }
Autor >> buscarPorAlbum: aString [
]

{ #category : #'as yet unclassified' }
Autor >> buscarPorGenero: aString [
]

{ #category : #'as yet unclassified' }
Autor >> buscarPorTitulo: aString [
]

{ #category : #'as yet unclassified' }
Autor >> devolverAlbumes [
^albumes 
]

{ #category : #'as yet unclassified' }
Autor >> devolverTemas [
]

{ #category : #'as yet unclassified' }
Autor >> getNombre [
]

{ #category : #initialization }
Autor >> initializeWithNombre: unNombre [
nombre:= unNombre.
albumes:= OrderedCollection new.
]
