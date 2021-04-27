Class {
	#name : #UsuarioTest,
	#superclass : #TestCase,
	#instVars : [
		'usuario1',
		'usuario2',
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
UsuarioTest >> setUp [
tema1:= Tema conNombre: 'Amateur'.
tema2:= Tema conNombre: 'Marciano'.
tema3:= Tema conNombre: 'Stan'.
tema4:= Tema conNombre: 'The Real Slim Shady'.
tema5:= Tema conNombre: 'Soy Sabalero'.
tema6:= Tema conNombre: 'Olvidala'.

usuario1 := Usuario conNombre: 'Juan'.
usuario2 := Usuario conNombre: 'Gonzalo'.
usuario1 agregar: tema1.
usuario1 agregar: tema4. 
usuario1 agregar: tema6 .
]

{ #category : #tests }
UsuarioTest >> testAgregar [
|aux|
self assertEmpty: usuario2 devolverMyMusic .
aux := OrderedCollection new.
usuario2 agregar: tema3 ;
			agregar: tema5 .
aux add: tema3; 
	 add: tema5 .
self assertCollection: usuario2 devolverMyMusic  equals: aux.
]

{ #category : #tests }
UsuarioTest >> testRemover [
|aux|
aux := OrderedCollection new.
aux add: tema1; 
	 add: tema4; 
	 add: tema6.
self assertCollection: usuario1 devolverMyMusic equals:aux .
usuario1 remover: tema1; 
			remover: tema4; 
			remover: tema6.
self assertEmpty: usuario2 devolverMyMusic.
]
