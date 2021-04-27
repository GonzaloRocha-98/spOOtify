Class {
	#name : #SpOOtifyTest,
	#superclass : #TestCase,
	#instVars : [
		'usuario1',
		'usuario2',
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
		'tema6',
		'spOOtify'
	],
	#category : #'SpOOtify-test'
}

{ #category : #running }
SpOOtifyTest >> setUp [
spOOtify := SpOOtify new.

tema1:= Tema conNombre: 'Amateur'.
tema2:= Tema conNombre: 'Marciano'.
album1:= Album conNombre: 'Con Todo Respeto'.
album1 agregarTema: tema1.
album1 agregarTema:tema2.
autor1:= Autor conNombre: 'Molotov'.
autor1 agregarAlbum: album1.
spOOtify agregarAutor: autor1.

tema3:= Tema conNombre: 'Stan'.
tema4:= Tema conNombre: 'The Real Slim Shady'.
album2:= Album conNombre: 'The Marshall Mathers LP'.
album2 agregarTema: tema3.
album2 agregarTema: tema4.
autor2:= Autor conNombre:'Eminem'.
autor2 agregarAlbum: album2.
spOOtify agregarAutor: autor2.
 

tema5:= Tema conNombre: 'Soy Sabalero'.
tema6:= Tema conNombre: 'Olvidala'.
album3:= Album conNombre: 'Voló la paloma'.
album4:= Album conNombre: 'Soy Sabalero'.
album3 agregarTema: tema5.
album4 agregarTema: tema6.
autor3 := Autor conNombre: 'Los Palmeras'.
autor3 agregarAlbum: album3.
autor3 agregarAlbum: album4.
spOOtify agregarAutor: autor3.


usuario1 := Usuario conNombre: 'Juan'.
usuario2 := Usuario conNombre: 'Gonzalo'.
usuario1 agregar: tema1.
usuario1 agregar: tema4. 
usuario1 agregar: tema6 .
usuario2 agregar: tema3 .
usuario2 agregar: tema5 .
spOOtify agregarUsuario: usuario1 .
spOOtify agregarUsuario: usuario2.
]

{ #category : #'as yet unclassified' }
SpOOtifyTest >> testAgregarAutor [
|aux autor4|
aux := OrderedCollection new .
aux add: autor1;
	 add:autor2 .
self assertCollection: (spOOtify devolverAutores) includesAll: aux. 

autor4:= Autor conNombre: 'Duki'.
aux add: autor4.
self denyCollection: (spOOtify devolverAutores  ) includesAll: aux. 
spOOtify agregarAutor: autor4.
self assertCollection: (spOOtify devolverAutores  ) includesAll: aux. 
]

{ #category : #'as yet unclassified' }
SpOOtifyTest >> testAgregarUsuario [
|aux usuario3|
aux := OrderedCollection new .
aux add: usuario1 .
aux add: usuario2.
self assertCollection: (spOOtify devolverUsuarios) includesAll: aux. 

usuario3:= Usuario conNombre: 'Codubi'.
aux add: usuario3.
self denyCollection: (spOOtify devolverUsuarios  ) includesAll: aux. 
spOOtify agregarUsuario: usuario3.
self assertCollection: (spOOtify devolverUsuarios ) includesAll: aux. 
]

{ #category : #'as yet unclassified' }
SpOOtifyTest >> testBuscarPorAlbum [
|aux|
aux := OrderedCollection new.
aux addAll: (album2 devolverTemas); addAll: (album3 devolverTemas) .
self assertCollection: (spOOtify buscarPorAlbum: 'M') equals: aux.

self assertCollection: (spOOtify buscarPorAlbum: 'paloma' ) equals: album3 devolverTemas  . 
]

{ #category : #'as yet unclassified' }
SpOOtifyTest >> testBuscarPorAutor [
|aux|
self assertCollection: (spOOtify buscarPorAutor: 'Molot') equals: autor1 devolverTemas  .
aux:= OrderedCollection new.
aux addAll: autor1 devolverTemas; addAll:autor3 devolverTemas .
self assertCollection: (spOOtify buscarPorAutor: 'l' ) equals: aux . 
]

{ #category : #'as yet unclassified' }
SpOOtifyTest >> testBuscarPorTitulo [
|aux|
aux:= OrderedCollection new.
aux add: tema5. 
self assertCollection: (spOOtify buscarPorTitulo: 'sab') equals: aux.
aux add: tema1; 
	 add: tema2; 
	 add: tema3; 
	 add: tema4; 
	 add: tema6.
self assertCollection: (spOOtify buscarPorTitulo: 'a' ) includesAll: aux. 
]
