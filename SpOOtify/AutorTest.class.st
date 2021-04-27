Class {
	#name : #AutorTest,
	#superclass : #TestCase,
	#instVars : [
		'autor1',
		'autor2',
		'autor3',
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
AutorTest >> setUp [
tema1:= Tema conNombre: 'Amateur'.
tema2:= Tema conNombre: 'Marciano'.
album1:= Album conNombre: 'Con Todo Respeto'.
album1 agregarTema: tema1.
album1 agregarTema:tema2.
autor1:= Autor conNombre: 'Molotov'.

tema3:= Tema conNombre: 'Stan'.
tema4:= Tema conNombre: 'The Real Slim Shady'.
album2:= Album conNombre: 'The Marshall Mathers LP'.
album2 agregarTema: tema3.
album2 agregarTema: tema4.
autor2:= Autor conNombre:'Eminem'.
autor2 agregarAlbum: album2.

tema5:= Tema conNombre: 'Soy Sabalero'.
tema6:= Tema conNombre: 'Olvidala'.
album3:= Album conNombre: 'Voló la paloma'.
album4:= Album conNombre: 'Soy Sabalero'.
album3 agregarTema: tema5.
album4 agregarTema: tema6.
autor3 := Autor conNombre: 'Los Palmeras'.
autor3 agregarAlbum: album3.
autor3 agregarAlbum: album4.

]

{ #category : #tests }
AutorTest >> testAgregarAlbum [
|aux|
self assertEmpty: autor1 devolverAlbumes. 
autor1 agregarAlbum: album1 .
aux:= OrderedCollection new.
aux add: album1 .
self assertCollection: autor1 devolverAlbumes  equals: aux

]

{ #category : #tests }
AutorTest >> testBuscarPorAlbum [
self assertCollection: (autor2  buscarPorAlbum: 'M') equals: album2 devolverTemas  .
self assertEmpty: (autor2  buscarPorAlbum: 'awsd')

]

{ #category : #tests }
AutorTest >> testBuscarPorTitulo [
|aux|
aux := OrderedCollection new .
aux add: tema5 .
self assertCollection: (autor3  buscarPorTitulo: 'sab') equals: aux .

self assertEmpty: (autor3 buscarPorTitulo: 'an' ). 
]
