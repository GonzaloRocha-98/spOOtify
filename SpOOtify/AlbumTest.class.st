Class {
	#name : #AlbumTest,
	#superclass : #TestCase,
	#instVars : [
		'album1',
		'album2',
		'album3',
		'album4',
		'tema1',
		'tema2',
		'tema3',
		'tema4',
		'tema5',
		'tema6'
	],
	#category : #'SpOOtify-test'
}

{ #category : #running }
AlbumTest >> setUp [

tema1:= Tema conNombre: 'Amateur'.
tema2:= Tema conNombre: 'Marciano'.
album1:= Album conNombre: 'Con Todo Respeto'.

tema3:= Tema conNombre: 'Stan'.
tema4:= Tema conNombre: 'The Real Slim Shady'.
album2:= Album conNombre: 'The Marshall Mathers LP'.
album2 agregarTema: tema3.
album2 agregarTema: tema4.
 
tema5:= Tema conNombre: 'Soy Sabalero'.
tema6:= Tema conNombre: 'Olvidala'.
album3:= Album conNombre: 'Voló la paloma'.
album4:= Album conNombre: 'Soy Sabalero'.
album3 agregarTema: tema5.
album4 agregarTema: tema6.
]

{ #category : #tests }
AlbumTest >> testAgregarTema [
|aux|
self assertEmpty: album1 devolverTemas. 
album1 agregarTema: tema1.
album1 agregarTema: tema2.
aux:= OrderedCollection new.
aux add: tema1 .
aux add: tema2.
self assertCollection: album1 devolverTemas  equals: aux
]

{ #category : #tests }
AlbumTest >> testBuscarPorTitulo [
|aux|
aux := OrderedCollection new .
aux add: tema4 .
self assertCollection: (album2  buscarPorTitulo: 'ea') equals: aux .

]
