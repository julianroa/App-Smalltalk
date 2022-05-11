"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Cliente
	instanceVariableNames: 'nombre apellido nroCliente fechaAlta tipoS precioS promo franja'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Cliente guid: (GUID fromString: '{DBB45F45-02B1-4306-90E8-0A7502663AE4}')!
Cliente comment: ''!
!Cliente categoriesForClass!Kernel-Objects! !
!Cliente methodsFor!

iniCliente:nombreCliente ap:ape nc:nro f:fe ts:tipo ps:precio pr:pro fr:fra
"inicializa la instancia"
nombre:=nombreCliente.
apellido:=ape.
nroCliente:=nro.
fechaAlta:=fe.
tipoS:=tipo.
precioS:=precio.
promo:=pro.
franja:=fra
!

modPrecioS: precioNuevo
"Modifica el precio del cliente"
precioS:=precioNuevo .!

modPromo: promoNueva
"Modifica la promocion del cliente"
promo:=promoNueva.!

modTipoS: tipoNuevo
"Modifica el tipo de servicio del cliente"
tipoS:=tipoNuevo.!

verNro
"Retorna el nro de cliente"
^nroCliente.! !
!Cliente categoriesFor: #iniCliente:ap:nc:f:ts:ps:pr:fr:!public! !
!Cliente categoriesFor: #modPrecioS:!public! !
!Cliente categoriesFor: #modPromo:!public! !
!Cliente categoriesFor: #modTipoS:!public! !
!Cliente categoriesFor: #verNro!public! !

!Cliente class methodsFor!

crearCliente:nombreCliente ap:ape nc:nro f:fe ts:tipo ps:precio pr:pro fr:fra
"Retorna una instancia inicializada del objeto cliente"
^(self new) iniCliente: nombreCliente ap: ape nc: nro f: fe ts: tipo ps: precio pr: pro fr: fra! !
!Cliente class categoriesFor: #crearCliente:ap:nc:f:ts:ps:pr:fr:!public! !

