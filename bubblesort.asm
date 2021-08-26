.loop2rec:
  add r5,r5,1
  b.check2
  
.loop2:
  mov r5,r4
  .check2:
  cmp r3,r5
  bgt .compute
  add r4,r4,1
  b.loop1

.compute:
  mul r6,r5,4
  add r7,r6,4
  cmp r6[r0],r7[r0]
  bgt .swap
  add r5,r5,1
  b.check2

.swap:
  mov r8,r6[r0]
  mov r6[r0],r7[r0]
  mov r7[r0],r8
  b.loop2rec








.bubblesort:
		@ ADD YOUR CODE HERE
   mov r4,r2
   .loop1:
    cmp r3,r4
    bgt .loop2


.main:

	@ Loading the values as an array into the registers
	mov r0, 0    
	mov r1, 12	@ replace 12 with the number to be sorted
	st r1, 0[r0]
	mov r1, 7	@ replace 7 with the number to be sorted
	st r1, 4[r0]
	mov r1, 11  @ replace 11 with the number to be sorted
	st r1, 8[r0]
	mov r1, 9   @ replace 9 with the number to be sorted
	st r1, 12[r0]
	mov r1, 3   @ replace 3 with the number to be sorted
	st r1, 16[r0]
	mov r1, 15  @ replace 15 with the number to be sorted
	st r1, 20[r0]
	@ EXTEND ON SIMILAR LINES FOR MORE NUMBERS

	mov r2, 0       @ Starting address of the array
	
	@ Retreive the end address of the array
	mov r3, 6	@ REPLACE 6 WITH N, where, N is the number of numbers being sorted
	
	@ ADD YOUR CODE HERE

	call .bubblesort
	
	@ ADD YOUR CODE HERE

	@ Print statements
	ld r1, 0[r0]
	.print r1
	ld r1, 4[r0]
	.print r1
	ld r1, 8[r0]
	.print r1
	ld r1, 12[r0]
	.print r1
	ld r1, 16[r0]
	.print r1
	ld r1, 20[r0]
	.print r1
	@ EXTEND ON SIMILAR LINES FOR MORE NUMBERS

