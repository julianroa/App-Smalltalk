| cl nombreCliente ape nro fa tipo prec promo fh lis col seguir sigue opc col1 |

lis:= ListaCli crearListaCli: (Prompter prompt: 'Ingrese el nombre de la empresa').

col:=0.
seguir:= 1.
[seguir = 1] whileTrue: [
	Transcript clear.
	Transcript show: '	1 - Agregar un cliente.
	2 - Modificar un el servicio de un cliente.
	3 - Eliminar un cliente	
	4-Salir'.
	opc:= (Prompter prompt: 'Elija una opci�n') asNumber.

	(opc = 1) ifTrue: [
			sigue:= 's'.
			[sigue = 's'] whileTrue: [
				nombreCliente:= Prompter prompt: 'Ingrese el nombre del cliente'.
				ape:= Prompter prompt: 'Ingrese el apellido del cliente'.
				nro:= (Prompter prompt: 'Ingrese el numero del cliente') asNumber.
				fa:=  Date newDay: ((Prompter prompt: 'Ingrese el d�a (n�mero) de alta')asNumber) month: (Prompter prompt: 'Ingrese nombre del mes de alta') year: ((Prompter prompt: 'Ingrese el a�o (n�mero) de alta')asNumber).
				tipo:= Prompter prompt: 'Ingrese el tipo de servicio del cliente'.
				prec:= (Prompter prompt: 'Ingrese el precio de servicio del cliente') asNumber.
				promo:= Prompter prompt: 'Ingrese si el cliente esta en promocion(si/no)'.
				fh:= Prompter prompt: 'Ingrese la franja horaria disponible del cliente(Ma�ana/Tarde)'.
				cl:= Cliente crearCliente:nombreCliente ap:ape nc:nro f:fa ts:tipo ps:prec pr:promo fr:fh.
				lis agregarCliente: cl.
				sigue:= Prompter prompt: 'Hay mas clientes para cargar (s/n)'.
			].
].



		
		(opc = 2) ifTrue:[
					((lis verCantidadClientes) > 0) ifTrue: [
							col:= lis verTodos.
							nro:= Prompter prompt: 'Ingrese el nro de cliente a modificar'.
							col1:=((lis verTodos) detect: [:c | ((c verNro = nro))] ifNone:[nil ]).
							(col = nil) ifTrue: [MessageBox warning: 'Cliente no encontrado.' ]
									ifFalse: [
											Transcript clear.
											Transcript show: '
											1 - Tipo de servicio
											2 - Precio de servicio
											3 - Promocion'.
													
											opc:= (Prompter prompt: 'Elija una opci�n del men�') asNumber.
											(opc = 1) ifTrue: [tipo:= Prompter  prompt: 'Ingrese el nuevo tipo de servicio'. cl modTipoS: tipo.]
												ifFalse:[
												(opc = 2) ifTrue: [prec:= (Prompter prompt: 'Ingrese el nuevo precio')asNumber. cl modPrecioS: prec. ]
														ifFalse: [
																(opc = 3) ifTrue: [tel:= (Prompter prompt: 'Ingrese el nuevo estado de promocion(si/no)'). cl modPromocion: promo.]
																					
																		    ].
															].
												    ].
                                                              ]ifFalse: [MessageBox warning: 'No hay clientes en la lista'.].      
							
                                                       ].
                                                        		 




                (opc = 3) ifTrue:[ 
					((lis verCantidadClientes) > 0) ifTrue: [
							col:= lis verTodos.
							nro:= Prompter prompt: 'Ingrese el nro de cliente a eliminar'.
							col1:=((lis verTodos) detect: [:c | ((c verNro = nro))] ifNone:[nil ]).
							(col = nil) ifTrue: [MessageBox warning: 'Cliente no encontrado.' ]
									ifFalse: [
											lis eliminarCliente: cl
												
			
											 
										].

                    

                	]ifFalse: [MessageBox warning: 'No hay clientes en la lista'.].
            
        
    ].
].