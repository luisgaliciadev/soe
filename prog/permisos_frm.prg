LPARAMETERS Vcod_mod
conex=SQLCONNECT("bppc")
IF conex > 0 
	lsql="select * from permisos_usuarios"
	resp=SQLEXEC(conex, lsql, "permisos_usuarios")
	IF resp>0
		SELECT permisos_usuarios
		GO top
	ELSE
		MESSAGEBOX("Disculpe, error en la consulta por favor comunicarse con el Dpto. de Inform�tica .",0+16,"Error de conexi�n")
	ENDIF 
ELSE
	MESSAGEBOX("Disculpe, no existe conexi�n con el servidor.",0+16,"Error de conexi�n")
ENDIF 

SET EXACT ON
SELECT permisos_usuarios
GO TOP
LOCATE FOR cod_mod=Vcod_mod AND cedula=Vgc_usuario
IF FOUND() AND permiso <> 'D'
	RETURN permiso
ELSE
	MESSAGEBOX("Disculpe, no posee permisos para el m�dulo",0+16,"Mensaje")
	RETURN '0' 
ENDIF 
SET EXACT OFF 