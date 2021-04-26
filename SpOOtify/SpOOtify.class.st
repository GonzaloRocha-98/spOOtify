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
]

{ #category : #'as yet unclassified' }
SpOOtify >> buscarPorAlbum: asString [
]

{ #category : #'as yet unclassified' }
SpOOtify >> buscarPorAutor: asString [
]

{ #category : #'as yet unclassified' }
SpOOtify >> buscarPorGenero: asString [
]

{ #category : #'as yet unclassified' }
SpOOtify >> buscarPorTitulo: asString [
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
