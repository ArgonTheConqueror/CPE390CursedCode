	.global _Z6setBitii
_Z6setBitii:
	@r0=a
	@r1=b, so r2 and r3 only
	mov r2, #1 @r2=0x00000001
	lsl r2, r1 @shift left r2 by r1 spaces
	orr r0, r0, r2 @ or r2 and r0 and place result in r0, => r0=a|b
	bx lr

	.global _Z8clearBitii
_Z8clearBitii:
	@r0, r1 = a and b respectively
	mov r2, #1 @num =1
	lsl r2, r1 @num=1<<b
	ldr r3, =0xFFFFFFFF
	eor r2, r2, r3 @flip all the bits with 1111....
	and r0, r0, r2 @r0= r0&r2 or a and b
	bx lr

	.global _Z4flipii
_Z4flipii:
	@r0, r1= a and b
	mov r2, #1
	lsl r2, r1
	eor r0, r0, r2
	bx lr

	.global _Z11replaceBitsiii
_Z11replaceBitsiii:	 @r0-a  r1-b  r2-c
	and r0, r0, r1
	orr r0, r0, r2
	bx lr

	.global _Z10buildColoriii
_Z10buildColoriii:	  @ r0-r r1-g r2-b
	lsl r0, #16  @move r0 left 4*4=16
	lsl r1, #8   @move r0 left 2*4=8
	add r0, r1
	add r0, r2
	bx lr
	.global _Z6chooseii
_Z6chooseii:
	mov r0, #0
	bx lr

