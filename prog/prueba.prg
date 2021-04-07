SET CENTURY ON
SET DATE DMY
SET SAFETY OFF

PUBLIC lcAppDir,Vgc_almatrab,Vgc_usuario,nres
PUBLIC Vlc_numbl,Vlc_numcont,Vlc_nombrebuque,Vlc_numviaje,Vlc_fechaatr ,Vgc_clic,Vgn_opt,Vgc_cliente2,conex,Vgn_tipousu

PUBLIC VPC_DETA, MOTIVO_ANUL,Vgn_expedbuq , Vgn_anio

conex=0
Vgc_cliente2=""
lcAppDir = upper(ADDBS(SYS(5) + SYS(2003)))
Vgc_almatrab='23'
Vgc_usuario="8592113"
Vgc_clic =0
Vgn_opt=1
Vgn_tipousu=3
Vgn_expedbuq = 0
Vgn_anio = 0

SET DEFAULT TO FULLPATH(lcAppDir)
OPEN DATABASE FULLPATH(lcAppDir+"DATA\ESTIBA.dbc")
SET PATH TO "animaciones, ayuda, botones, data, clase, formularios, img, prog, reportes"