	.data
fin: .asciiz "./input.txt"
fin_buffer: .space 1024
fout: .asciiz "./output.txt"
newline: .asciiz "\n"
fout_buffer: .space 1024
TIME_1: .space 100
TIME_2: .space 100
	date: .asciiz"Nhap ngay: "
	month: .asciiz"Nhap thang: "
	year: .asciiz"Nhap nam: "
	reinput: .asciiz"nhap sai dinh dang, moi nhap lai\n"
	Arr_Of_Date: .word 31,28,31,30,31,30,31,31,30,31,30,31 
	Type: .space 20
	mon1: .asciiz "January"	
	mon2: .asciiz "February"	
	mon3: .asciiz "March"	
	mon4: .asciiz "April"	
	mon5: .asciiz "May"	
	mon6: .asciiz "June"	
	mon7: .asciiz "July"
	mon8: .asciiz "August"
	mon9: .asciiz "September"
	mon10: .asciiz "October"
	mon11: .asciiz "November"
	mon12: .asciiz "December"
	Month_Name: .word mon1,mon2,mon3,mon4,mon5,mon6,mon7,mon8,mon9,mon10,mon11,mon12
	Temp2: .space 2
	TempYear: .space 4
	text1: .asciiz "\nNam nhuan 1: "
	text2: .asciiz"\nNam nhuan 2: "
	.text
	
	.globl main
main:	
	#Call function
	la $a0,TIME_1
	la $a1,Arr_Of_Date
	la $a3,Type
	jal Input_And_Check_Function
	#Print TIME_1
	la $a0,TIME_1
	li $v0,4
	syscall
	
	li $v0,11
	la $a0,'\n'
	syscall
	#Print time after convert
	la $a0,TIME_1
	la $a1, 'B'
	la $a2,Month_Name
	jal Convert
	
	la $a0,Type
	li $v0,4
	syscall
	#xuat 2 nam nhuan gan nhat
	la $a0, TIME_1
	jal Find_Leap
	move $t1,$v0
	move $t2,$v1
	li $v0,4
	la $a0,text1
	syscall
	li $v0,1
	move $a0,$t1
	syscall
	li $v0,4
	la $a0,text2
	syscall
	li $v0,1
	move $a0,$t2
	syscall
	#end of text
	li $v0,10
	syscall
	

# ===== Ham doc file input =====
#  void Doc_FILE()
Doc_File:
	# push stack
	subu $sp, $sp, 8
	sw $ra, ($sp)
	sw $s6, 4($sp)
	
	# open input file
	la $a0, fin
	li $a1, 0
	li $a2, 0
	li $v0, 13
	syscall
	move $s6, $v0
	
	# read opened input file
	move $a0, $s6
	la $a1, fin_buffer
	li $a2, 1024
	li $v0, 14
	syscall
	move $t0, $v0 # input length
	
	# close input file
	move $a0, $s6
	li $v0, 16
	syscall
	
	# pop stack
	lw $ra, ($sp)
	lw $s6, 4($sp)
	addu $sp, $sp, 8
	
	# exit from function
	jr $ra
# ================================

# ===== Ham xuat file output =====
# void Xuat_FILE()
Xuat_File:
	# push stack
	subu $sp, $sp, 8
	sw $ra, ($sp)
	sw $s6, 4($sp)
	
	# open output file
	la $a0, fout
	li $a1, 1
	li $a2, 0
	li $v0, 13
	syscall
	move $s6, $v0
	
	# write output file
	move $a0, $s6
	la $a1, fout_buffer
	li $a2, 1024
	li $v0, 15
	syscall
	
	# close output file
	move $a0, $s6
	li $v0, 16
	syscall
	
	# pop stack
	lw $s6, 4($sp)
	lw $ra, ($sp)
	addu $sp, $sp, 8
	
	# exit from function
	jr $ra
# ================================

#===== Ham Convert ========
#char* Convert($a0: char*, $a1: char type ABC, $a2: Char * Month_Name)
#return char * Type
# Need Temp2: .space 2 for temp and Type: .space 20 for return
Convert:
	#push stack
	subu $sp,$sp,20
	sw $ra,($sp)
	sw $a0,4($sp)	
	sw $t1,8($sp)
	sw $t2,12($sp)
	sw $t3,16($sp)
	#Check type
	beq $a1,'A',TypeA
	beq $a1,'B',TypeB
	beq $a1,'C',TypeC
TypeA: # MM/DD/YYYY
	la $t1,Temp2 
	lb $t2,($a0) #Dd/mm/yyyy
	sb $t2,($t1) 
	addi $t1,$t1,1
	addi $a0,$a0,1
	lb $t2,($a0) #dD/mm/yyyy
	sb $t2,($t1)
	addi $a0,$a0,2 #cong a0 len phan tu thu 3 la dd/Mm/yyyy
	la $v0,Type
	lb $t3,($a0) #luu Mm vao t3
	sb $t3,($v0) #luu vo v0 -> M
	addi $a0,$a0,1
	addi $v0,$v0,1
	lb $t3,($a0) #luu mM vao t3
	sb $t3,($v0) #luu vo v0 -> MM
	addi $v0,$v0,1
	li $t3,'/'
	sb $t3,($v0)
	# Store DD to MM/
	addi $v0,$v0,1
	la $t2,Temp2
	lb $t3,($t2)
	sb $t3,($v0)
	#Store D to MM/D
	addi $v0,$v0,1
	addi $t2,$t2,1
	lb $t3,($t2)
	sb $t3,($v0)
	addi $t3,$t3,1
	addi $v0,$v0,1
	li $t3,'/'
	sb $t3,($v0)
	#Copy Year
	li $t2,6
	lw $a0, 4($sp)
	la $v0,Type
	add $a0,$a0,$t2
	add $v0,$v0,$t2
While:
	ble $t2,9,Copy_Year
	j Exit
Copy_Year:
	lb $t3,($a0)
	sb $t3,($v0)
	addi $a0,$a0,1
	addi $v0,$v0,1
	addi $t2,$t2,1
	j While
TypeB: #Month DD, YYYY
	addi $a0,$a0,3
	la $t1,Temp2
	#copy MM
	lb $t2,($a0)
	sb $t2,($t1)
	addi $a0,$a0,1
	addi $t1,$t1,1
	lb $t2,($a0)
	sb $t2,($t1)
	#Convert char month to int month
	la $a0,Temp2
	jal atoi
	move $t1,$v0
	subi $t1,$t1,1
	li $t2,4
	mult $t1,$t2
	mflo $t1	
	add $a2,$a2,$t1
	lw $a0,($a2)
	jal Find_Length	
	move $t3,$v0

	la $v0,Type
	li $t2,0
	lw $a0,($a2)
Copy_Month:
	bge $t2,$t3,Con_B
	lb $t1,($a0)
	sb $t1,($v0)
	addi $t2,$t2,1
	addi $a0,$a0,1
	addi $v0,$v0,1
	j Copy_Month
Con_B:
	#add ' '
	li $t1,' ' 
	sb $t1,($v0)
	#add dd
	lw $a0, 4($sp)
	addi $v0,$v0,1
	lb $t1,($a0)
	sb $t1,($v0)
	addi $v0,$v0,1
	addi $a0,$a0,1
	lb $t1,($a0)
	sb $t1,($v0)
	#add ','
	addi $v0,$v0,1
	li $t1,','
	sb $t1,($v0)
	#copy yyyy
	addi $v0,$v0,1
	lw $a0,4($sp)
	addi $a0,$a0,6
	li $t1,0
Copy_YearB:
	bge $t1,4,Exit
	lb $t2,($a0)
	sb $t2,($v0)
	addi $t1,$t1,1
	addi $a0,$a0,1
	addi $v0,$v0,1
	j Copy_YearB
TypeC:
	#copy dd
	la $v0,Type
	lb $t1,($a0)
	sb $t1,($v0)
	addi $a0,$a0,1
	addi $v0,$v0,1
	lb $t1,($a0)
	sb $t1,($v0)
	#add space to v0
	addi $v0,$v0,1
	li $t1,' '
	sb $t1,($v0)
	addi $v0,$v0,1
	#copy month from a0 to temp2
	addi $a0,$a0,2
	la $t1,Temp2
	lb $t2,($a0)
	sb $t2,($t1)
	addi $a0,$a0,1
	addi $t1,$t1,1
	lb $t2,($a0)
	sb $t2,($t1)	
	#Find Month int then int to char
	la $t2,Temp2
	move $a0,$t2
	jal atoi
	move $t1,$v0
	subi $t1,$t1,1
	la $t2,4
	mult $t1,$t2
	mflo $t1
	add $a2,$a2,$t1
	lw $a0,($a2)
	jal Find_Length
	move $t3,$v0
	#Copy Month To v0
	la $v0,Type
	addi $v0,$v0,3
	li $t2,0
	lw $a0,($a2)
Copy_Month_C:
	bge $t2,$t3,Con_C
	lb $t1,($a0)
	sb $t1,($v0)
	addi $t2,$t2,1
	addi $a0,$a0,1
	addi $v0,$v0,1
	j Copy_Month_C
Con_C:
	#copy ',' to v0
	li $t1,','
	sb $t1,($v0)
	addi $v0,$v0,1
	#Copy Year
	lw $a0,4($sp)
	addi $a0,$a0,6
	li $t1,0
	j Copy_YearB
Exit:
	#pop stack
	lw $ra,($sp)
	lw $a0,4($sp)	
	lw $t1,8($sp)
	lw $t2,12($sp)
	lw $t3,16($sp)
	addu $sp,$sp,20
	jr $ra 
#===========================================
	#=====	Ham Input ngay thang nam, check hop le va xuat chuoi	=====
# void Input_And_Check_Function( $a0: char, $a1: Arr_Of_Date)
Input_And_Check_Function:
	#push stack
	subu $sp,$sp,28
	sw $ra,($sp)
	sw $a0,4($sp) #save Arr_Of_Date
	sw $t1,8($sp)
	sw $t2,12($sp)
	sw $t3,16($sp)
	sw $t4,20($sp)
	sw $t5,24($sp)
Input:	
	# Input day month year
	li $v0,4
	la $a0,date
	syscall
	li $v0,5
	syscall
	move $t1,$v0
	
	li $v0,4
	la $a0,month
	syscall
	li $v0,5
	syscall 
	move $t2,$v0
	
	li $v0,4
	la $a0,year
	syscall
	li $v0,5
	syscall
	move $t3,$v0
	
	j Check_Input
	#Check Input	
Check_Input:
	sge $t4,$t1,1
	sle $t5,$t1,31
	bne $t4,$t5,ReInput
	
	sge $t4,$t2,1
	sle $t5,$t2,12
	bne $t4,$t5,ReInput

	ble $t3,0,ReInput
	j Continue
ReInput:
	li $v0,4
	la $a0,reinput
	syscall
	j Input
Continue:
	#Check Leap Year
	move $a0,$t3
	jal LeapYear
	move $t4,$v0 #save return of LeapYear to t4
	beq $t4,1,Check_Month_2_Leap
	j Check_Month_1_To_12
Check_Month_2_Leap: 
	sge $t4,$t1,1
	sle $t5,$t1,29
	bne $t4,$t5,ReInput
Check_Month_1_To_12:
	move $t4,$t2 
	subi $t4,$t4,1 
	la $t5,4
	mult $t4,$t5
	mflo $t4
	add $a1,$a1,$t4

	sge $t5,$t1,1
	lw $a2,($a1)
	sle $t4,$t1,$a2
	bne $t4,$t5,ReInput
	j Convert_To_Char
Convert_To_Char:
	lw $t4,4($sp)
	
	move $a0,$t1
	move $a1,$t2
	move $a2,$t3
	move $a3,$t4

	jal Date
	#move $v0,$a3
	lw $ra,($sp)
	lw $a0,4($sp)
	lw $t1,8($sp)
	lw $t2,12($sp)
	lw $t3,16($sp)
	lw $t4,20($sp)
	lw $t5,24($sp)
	addu $sp,$sp,28
	jr $ra
#=========================================

	# ===== Ham kt nam nhuan =====
# int LeapYear($a0: int Year)
LeapYear:
	#Push Stack
	subu $sp,$sp,12
	sw $ra,($sp)
	sw $s0,4($sp)
	sw $t0,8($sp)
	
	li $s0,0 
	# Kiem tra co chia het cho 4 hay khong ? 
	li $t0,4
	div $a0,$t0
	mfhi $t0
	bne $t0,$0,LeapYear_Exit
	# Kiem tra co chia het cho 100 hay khong ? 
	li $t0,100
	div $a0,$t0
	mfhi $t0
	beq $t0,$0,Chia400
	li $s0,1
	j LeapYear_Exit
	
Chia400:
	# Kiem tra co chia het cho 400 hay khong ? 
	li $t0,400
	div $a0,$t0
	mfhi $t0
	bne $t0,$0,LeapYear_Exit
	li $s0,1
	j LeapYear_Exit
	
LeapYear_Exit:
	#Pop Stack
	move $v0,$s0
	lw $ra,($sp)
	lw $s0,4($sp)
	lw $t0,8($sp)
	addu $sp,$sp,12
	jr $ra
#==================================================
	#===== itoa =====
# char itoa($a0: int 1 digit)
# return $v0: char
itoa:
	# push stack
	subu $sp, $sp, 4
	sw $ra, ($sp)
	
	li $v0, 0
	addi $v0, $a0, '0'
	
	# pop stack
	lw $ra, ($sp)
	addu $sp, $sp, 4
	
	# exit from function
	jr $ra
# ================
	# ===== Xuat TIME DD/MM/YYYY =====
	# void Date($a0: int day, $a1: int month, $a2: int year, $a3: buffer of formatted string)
Date:
	# push stack
	subu $sp, $sp, 16
	sw $ra, ($sp)
	sw $t0, 4($sp)
	sw $t1, 8($sp)
	sw $t6, 12($sp)
	
	# convert day
	div $t0, $a0, 10
	mflo $t0
	mfhi $t1
	move $a0, $t0
	jal itoa
	move $t0, $v0
	move $a0, $t1
	jal itoa
	move $t1, $v0
	sb $t0, ($a3)
	sb $t1, 1($a3)
	
	# add '/'
	addi $t0, $0, '/'
	sb $t0, 2($a3)
	
	# convert month
	div $t0, $a1, 10
	mflo $t0
	mfhi $t1
	move $a0, $t0
	jal itoa
	move $t0, $v0
	move $a0, $t1
	jal itoa
	move $t1, $v0
	sb $t0, 3($a3)
	sb $t1, 4($a3)
	
	# add '/'
	addi $t0, $0, '/'
	sb $t0, 5($a3)
	
	# convert year
	li $t6, 1 # i = 1
	move $t0, $a2
Date_YR_loop:
	div $t0, $t0, 10
	mflo $t0
	mfhi $t1
	move $a0, $t1
	jal itoa
	subu $sp, $sp, 4
	sw $v0, ($sp)
	
	addi $t6, $t6, 1
	beq $t6, 4, Date_i_equals_4 # if i == 4
	j Date_YR_loop
	
Date_i_equals_4:
	move $a0, $t0
	jal itoa
	sb $v0, 6($a3)
	
	lw $t0, ($sp)
	addu $sp, $sp, 4
	sb $t0, 7($a3)
	
	lw $t0, ($sp)
	addu $sp, $sp, 4
	sb $t0, 8($a3)
	
	lw $t0, ($sp)
	addu $sp, $sp, 4
	sb $t0, 9($a3)
	
	# pop stack
	lw $t6, 12($sp)
	lw $t1, 8($sp)
	lw $t0, 4($sp)
	lw $ra, ($sp)
	addu $sp, $sp, 16
	
	# exit from function
	jr $ra
# ================================

#======== Ham Convert Char To Int=== Mac dinh 2 chu so
#int atoi ($a0: char a)
#return int v0
atoi:
	#push stack
	subu $sp,$sp,8
	sw $ra,($sp)
	sw $t1,4($sp)
	# convert 
	lb $t1,($a0)
	subi $t1,$t1,'0'
	li $v0,10
	mult $t1,$v0
	mflo $t1

	addi $a0,$a0,1
	lb $v0,($a0)
	subi $v0,$v0,'0'
	add $v0,$v0,$t1
	#pop stack
	lw $ra,($sp)
	lw $t1,4($sp)

	addu $sp,$sp,8
	jr $ra
#======================


#int find length($a0: char)
Find_Length:
	subu $sp,$sp,8
	sw $ra,($sp)
	sw $t1,4($sp)

	la $v0,0
Count:	
	lb $t1,($a0)
	beqz $t1, Exit_Find
	addi $v0,$v0,1
	addi $a0,$a0,1
	j Count
Exit_Find:
	lw $ra,($sp)
	lw $t1,4($sp)
	addu $sp,$sp,8
	jr $ra
#======================

#====== Ham tim nam nhuan gan nhat nam duoc chon ======
#int Find_Leap($a0:char)
#return $v0: Year1 < Selected Year, $v1: Year2 > Selected Year
Find_Leap:
	subu $sp,$sp,16
	sw $ra,($sp)	
	sw $a0,4($sp)
	sw $t1,8($sp)
	sw $t2,12($sp)
	
	la $a1,TempYear
	jal Convert_Year_Int
	move $a0,$v0
	sw $a0,4($sp)
	#Run For Year 1
	li $t1,1
Loop:
	subi $a0,$a0,1
	ble $a0,0,Left_Out
	jal LeapYear
	beq $v0,1,Loop2
	j Loop
Loop2:
	move $t2,$a0
	lw $a0,4($sp)
	li $t1,1
Loop2_1:
	addi $a0,$a0,1
	jal LeapYear
	beq $v0,1,ExitLeap
	j Loop2_1
Left_Out:
	li $v0,-1
	j Loop2
ExitLeap:
	move $v1,$t2
	move $v0,$a0
	lw $ra,($sp)	
	lw $a0,4($sp)
	lw $t1,8($sp)
	lw $t2,12($sp)
	addu $sp,$sp,16
	jr $ra
#==============================================

#====== Ham Lay chuoi date tra ve int year ======
#int Convert_Year_Int( $a0: string date,$a1: TempYear)
#return vo as int
Convert_Year_Int:
	subu $sp,$sp,16
	sw $ra,($sp)
	sw $a1,4($sp)
	sw $t1,8($sp)
	sw $t2,12($sp)
	#copy yyyy to TempYear
	addi $a0,$a0,6
	li $t1,0	
Loop_Int:
	bge $t1,4,Con
	lb $t2,($a0)
	sb $t2,($a1)
	addi $a0,$a0,1
	addi $a1,$a1,1
	addi $t1,$t1,1
	j Loop_Int
Con:	#Convert char yyyy to int yyyy
	lw $a1,4($sp)
	#phan tu dau x1000
	lb $t1,($a1)
	subi $t1,$t1,'0'
	li $t2,1000
	mult $t1,$t2
	mflo $t1
	sw $t1,8($sp)
	addi $a1,$a1,1
	#phan tu 2 nhan 100
	lb $t2,($a1)
	subi $t2,$t2,'0'
	li $t1,100
	mult $t1,$t2
	mflo $t2
	lw $t1,8($sp)
	add $t1,$t1,$t2
	sw $t1,8($sp)
	addi $a1,$a1,1
	#phan tu 3 nhan 10
	lb $t1,($a1)
	subi $t1,$t1,'0'
	li $t2,10
	mult $t1,$t2
	mflo $t2
	lw $t1,8($sp)
	add $t1,$t1,$t2
	sw $t1,8($sp)
	addi $a1,$a1,1
	#phan tu 4 cong vao stack 8($sp)
	lb $t2,($a1)
	subi $t2,$t2,'0'
	lw $t1,8($sp)
	add $t1,$t1,$t2
	#pop stack
	move $v0,$t1
	lw $ra,($sp)
	lw $a1,4($sp)
	lw $t1,8($sp)
	lw $t2,12($sp)
	addu $sp,$sp,16
	jr $ra
#=======================================
