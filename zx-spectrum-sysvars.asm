;**********************************
;** ZX SPECTRUM SYSTEM VARIABLES **
;**********************************

KSTATE_0	equ	$5C00	; 23552 ; Used in reading the keyboard.
KSTATE_4	equ	$5C04	; 23556
LASTK		equ	$5C08	; 23560 ; Stores newly pressed key.
REPDEL		equ	$5C09	; 23561 ; Time (in 50ths of a second in 60ths of a second in N. America) that a key must be held down before it repeats. This starts off at 35, but you can POKE in other values.
REPPER		equ	$5C0A	; 23562 ; Delay (in 50ths of a second in 60ths of a second in N. America) between successive repeats of a key held down: initially 5.
DEFADD		equ	$5C0B	; 23563 ; Address of arguments of user defined function if one is being evaluated; otherwise 0.
KDATA		equ	$5C0D	; 23565 ; Stores 2nd byte of colour controls entered from keyboard .
TVDATA_LO	equ	$5C0E	; 23566 ; Stores bytes of coiour, AT and TAB controls going to television.
TVDATA_HI	equ	$5C0F	; 23567
STRMS_FD	equ	$5C10	; 23568 ; Addresses of channels attached to streams.
STRMS_00	equ	$5C16	; 23574
CHARS		equ	$5C36	; 23606 ; 256 less than address of character set (which starts with space and carries on to the copyright symbol). Normally in ROM, but you can set up your own in RAM and make CHARS point to it.
RASP_PIP	equ	$5C38	; 23608 ; Length of warning buzz.
ERR_NR		equ	$5C3A	; 23610 ; 1 less than the report code. Starts off at 255 (for 1) so PEEK 23610 gives 255.
FLAGS		equ	$5C3B	; 23611 ; Various flags to control the BASIC system.
TV_FLAG		equ	$5C3C	; 23612 ; Flags associated with the television.
ERR_SP		equ	$5C3D	; 23613 ; Address of item on machine stack to be used as error return.
LIST_SP		equ	$5C3F	; 23615 ; Address of return address from automatic listing.
MODE		equ	$5C41	; 23617 ; Specifies K, L, C. E or G cursor.
NEWPPC		equ	$5C42	; 23618 ; Line to be jumped to.
NSPPC		equ	$5C44	; 23620 ; Statement number in line to be jumped to. Poking first NEWPPC and then NSPPC forces a jump to a specified statement in a line.
PPC		equ	$5C45	; 23621 ; Line number of statement currently being executed.
SUBPPC		equ	$5C47	; 23623 ; Number within line of statement being executed.
BORDCR		equ	$5C48	; 23624 ; Border colour * 8; also contains the attributes normally used for the lower half of the screen.
E_PPC		equ	$5C49	; 23625 ; Number of current line (with program cursor).
E_PPC_HI	equ	$5C4A	; 23626
VARS		equ	$5C4B	; 23627 ; Address of variables.
DEST		equ	$5C4D	; 23629 ; Address of variable in assignment.
CHANS		equ	$5C4F	; 23631 ; Address of channel data.
CURCHL		equ	$5C51	; 23633 ; Address of information currently being used for input and output.
PROG		equ	$5C53	; 23635 ; Address of BASIC program.
NXTLIN		equ	$5C55	; 23637 ; Address of next line in program.
DATADD		equ	$5C57	; 23639 ; Address of terminator of last DATA item.
E_LINE		equ	$5C59	; 23641 ; Address of command being typed in.
K_CUR		equ	$5C5B	; 23643 ; Address of cursor.
CH_ADD		equ	$5C5D	; 23645 ; Address of the next character to be interpreted: the character after the argument of PEEK, or the NEWLINE at the end of a POKE statement.
X_PTR		equ	$5C5F	; 23647 ; Address of the character after the ? marker.
WORKSP		equ	$5C61	; 23649 ; Address of temporary work space.
STKBOT		equ	$5C63	; 23651 ; Address of bottom of calculator stack.
STKEND		equ	$5C65	; 23653 ; Address of start of spare space.
STKEND_HI	equ	$5C66	; 23654
BREG		equ	$5C67	; 23655 ; Calculator's b register.
MEM		equ	$5C68	; 23656 ; Address of area used for calculator's memory. (Usually MEMBOT, but not always.)
FLAGS2		equ	$5C6A	; 23658 ; More flags.
DF_SZ		equ	$5C6B	; 23659 ; The number of lines (including one blank line) in the lower part of the screen.
S_TOP		equ	$5C6C	; 23660 ; The number of the top program line in automatic listings.
OLDPPC		equ	$5C6E	; 23662 ; Line number to which CONTINUE jumps.
OSPPC		equ	$5C70	; 23664 ; Number within line of statement to which CONTINUE jumps.
FLAGX		equ	$5C71	; 23665 ; Various flags.
STRLEN		equ	$5C72	; 23666 ; Length of string type destination in assignment.
T_ADDR		equ	$5C74	; 23668 ; Address of next item in syntax table (very unlikely to be useful).
SEED		equ	$5C76	; 23670 ; The seed for RND. This is the variable that is set by RANDOMIZE.
FRAMES1		equ	$5C78	; 23672 ; 3 byte (least significant first), frame counter. Incremented every 20ms.
UDG		equ	$5C7B	; 23675 ; Address of 1st user defined graphic You can change this for instance to save space by having fewer user defined graphics.
COORDS		equ	$5C7D	; 23677 ; x-coordinate of last point plotted.
COORDS_Y	equ	$5C7E	; 23678 ; y-coordinate of last point plotted.
PR_CC		equ	$5C80	; 23680 ; Full address of next position for LPRINT to print at (in ZX printer buffer). Legal values $5B00 - $5B1F. [Not used in 128K mode or when certain peripherals are attached]
ECHO_E		equ	$5C82	; 23682 ; 33 column number and 24 line number (in lower half) of end of input buffer.
DF_CC		equ	$5C84	; 23684 ; Address in display file of PRINT position.
DFCCL		equ	$5C86	; 23686 ; Like DF_CC for lower part of screen.
S_POSN		equ	$5C88	; 23688 ; 33 column number for PRINT position
S_POSN_HI	equ	$5C89	; 23689 ; 24 line number for PRINT position.
SPOSNL		equ	$5C8A	; 23690 ; Like S_POSN for lower part
SPOSNL_HI	equ	$5C8B	; 23691
SCR_CT		equ	$5C8C	; 23692 ; Counts scrolls: it is always 1 more than the number of scrolls that will be done before stopping with scroll? If you keep poking this with a number bigger than 1 (say 255), the screen will scroll on and on without asking you.
ATTRP_MASKP	equ	$5C8D	; 23693 ; Permanent current colours, etc (as set up by colour statements).
ATTRT_MASKT	equ	$5C8F	; 23695 ; Temporary current colours, etc (as set up by colour items).
MASK_T		equ	$5C90	; 23696 ; Like MASK_P, but temporary.
P_FLAG		equ	$5C91	; 23697 ; More flags.
MEM_0		equ	$5C92	; 23698 ; Calculator's memory area; used to store numbers that cannot conveniently be put on the calculator stack.
MEM_3		equ	$5CA1	; 23713
MEM_4		equ	$5CA6	; 23718
MEM_4_4		equ	$5CAA	; 23722
MEM_5_0		equ	$5CAB	; 23723
MEM_5_1		equ	$5CAC	; 23724
NMIADD		equ	$5CB0	; 23728 ; This is the address of a user supplied NMI address which is read by the standard ROM when a peripheral activates the NMI. Probably intentionally disabled so that the effect is to perform a reset if both locations hold zero, but do nothing if the locations hold a non-zero value. Interface 1's with serial number greater than 87315 will initialize these locations to 0 and 80 to allow the RS232 "T" channel to use a variable line width. 23728 is the current print position and 23729 the width - default 80.
RAMTOP		equ	$5CB2	; 23730 ; Address of last byte of BASIC system area.
P_RAMT		equ	$5CB4	; 23732 ; Address of last byte of physical RAM.

