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
^ ((self devolverAlbumes ) select: [:album | album coincide:aString ]) 
		flatCollect: [ :album | album devolverTemas ]
]

{ #category : #'as yet unclassified' }
Autor >> buscarPorTitulo: aString [
^ (self devolverAlbumes) flatCollect: [:album | album buscarPorTitulo: aString ] 
]

{ #category : #'as yet unclassified' }
Autor >> coincide: aString [ 
^(self getNombre) includesSubstring: aString caseSensitive: false 
]

{ #category : #'as yet unclassified' }
Autor >> devolverAlbumes [
^albumes 
]

{ #category : #'as yet unclassified' }
Autor >> devolverTemas [
^(self devolverAlbumes) flatCollect: [:album| album devolverTemas   ]
]

{ #category : #'as yet unclassified' }
Autor >> getNombre [
^nombre
]

{ #category : #initialization }
Autor >> initializeWithNombre: unNombre [
nombre:= unNombre.
albumes:= OrderedCollection new.
]
