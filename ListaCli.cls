"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ListaCli
	instanceVariableNames: 'nombreLista conjClientes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ListaCli guid: (GUID fromString: '{6C6227A8-7523-4E3A-80F8-F51A2C5839E7}')!
ListaCli comment: ''!
!ListaCli categoriesForClass!Kernel-Objects! !
!ListaCli methodsFor!

agregarCliente:cl
"Agregar una instancia de cliente a la lista"
conjClientes add:cl.!

eliminarCliente:cl
"Elimina el cliente"
conjClientes remove: cl.!

iniListaCli:nom
"Inicializa la instancia"
nombreLista := nom.
conjClientes:= OrderedCollection new.!

verCantidadClientes
"Devuelve la cantidad de clientes"
^(conjClientes size).!

verTodos
"Devuelve todos los clientes"
^conjClientes.! !
!ListaCli categoriesFor: #agregarCliente:!public! !
!ListaCli categoriesFor: #eliminarCliente:!public! !
!ListaCli categoriesFor: #iniListaCli:!public! !
!ListaCli categoriesFor: #verCantidadClientes!public! !
!ListaCli categoriesFor: #verTodos!public! !

!ListaCli class methodsFor!

crearListaCli:nom
"Retorna una instancia inicializada de agenda"
^(self new) iniListaCli: nom! !
!ListaCli class categoriesFor: #crearListaCli:!public! !

