SAVE 'zmaze.bin',main,prog_end-main,TAPE,'zmaze.cdt'

	org	$4000

TXTOUTPUT	=	$BB5A
KMREADKEY	=	$BB1B

main:
loop:
	call	KMREADKEY
	jp	NC,loop
	call	TXTOUTPUT
	jp	loop
	ret

prog_end:
