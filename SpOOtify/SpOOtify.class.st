Class {
	#name : #SpOOtify,
	#superclass : #Object,
	#instVars : [
		'usuarios',
		'autores'
	],
	#category : #'SpOOtify-model'
}

{ #category : #'as yet unclassified' }
SpOOtify >> agregarAutor: unAutor [
autores add:unAutor
]

{ #category : #'as yet unclassified' }
SpOOtify >> agregarUsuario: user [
usuarios add:user
]

{ #category : #'as yet unclassified' }
SpOOtify >> buscarPorAlbum: aString [
^ (self devolverAutores ) flatCollect: [:autor | autor buscarPorAlbum: aString ]
]

{ #category : #'as yet unclassified' }
SpOOtify >> buscarPorAutor: aString [
^ ((self devolverAutores ) select: [:autor | autor coincide: aString ])
		flatCollect: [:autor | autor devolverTemas ]
]

{ #category : #'as yet unclassified' }
SpOOtify >> buscarPorTitulo: aString [
^ (self devolverAutores) flatCollect: [:autor | autor buscarPorTitulo: aString  ]
]

{ #category : #'as yet unclassified' }
SpOOtify >> devolverAutores [
^ autores 
]

{ #category : #'as yet unclassified' }
SpOOtify >> devolverUsuarios [
^ usuarios 
]

{ #category : #initialization }
SpOOtify >> initialize [ 
usuarios:= OrderedCollection new.
autores:= OrderedCollection new.
]
