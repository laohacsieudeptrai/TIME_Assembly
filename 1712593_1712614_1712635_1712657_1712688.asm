	.data
tb_input: .asciiz "Nhap TIME:\n"
tb_input_1: .asciiz "Nhap TIME_1:\n"
tb_input_2: .asciiz "\nNhap TIME_2:\n"
tb_input_ngay: .asciiz "Nhap ngay: "
tb_input_thang: .asciiz "Nhap thang: "
tb_input_nam: .asciiz "Nhap nam: "
tb_input_error: .asciiz "Du lieu nhap vao khong hop le, moi nhap lai:\n"

fin: .asciiz "./input.txt"
fin_buffer: .space 1024
fout: .asciiz "./output.txt"
fout_buffer: .space 1024

newline: .asciiz "\n"
_space: .asciiz " "

TIME_1: .space 100
TIME_2: .space 100
input_2: .space 5
input_4: .space 7
buffer_1024: .space 1024

selection: .word 7

d1: .word 0
m1: .word 0
y1: .word 0
d2: .word 0
m2: .word 0
y2: .word 0

Arr_Of_Date: .word 31,28,31,30,31,30,31,31,30,31,30,31
Month_Name_Len: .word 7,8,5,5,3,4,4,6,9,7,8,8
Month_Name: .word mon1,mon2,mon3,mon4,mon5,mon6,mon7,mon8,mon9,mon10,mon11,mon12
Type: .space 200
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

## Khoi tao mang Can
Can1: .asciiz "Giap"
Can2: .asciiz "At"
Can3: .asciiz "Binh"
Can4: .asciiz "Dinh"
Can5: .asciiz "Mau"
Can6: .asciiz "Ky"
Can7: .asciiz "Canh"
Can8: .asciiz "Tan"
Can9: .asciiz "Nham"
Can10: .asciiz "Quy"
## Khoi tao mang Chi
Chi1: .asciiz "Ty"
Chi2: .asciiz "Suu"
Chi3: .asciiz "Dan"
Chi4: .asciiz "Meo"
Chi5: .asciiz "Thin"
Chi6: .asciiz "Ty"
Chi7: .asciiz "Ngo"
Chi8: .asciiz "Mao"
Chi9: .asciiz "Than"
Chi10: .asciiz "Dau"
Chi11: .asciiz "Tuat"
Chi12: .asciiz "Hoi"
## Khoi tao mang chuoi
Can: .word Can1,Can2,Can3,Can4,Can5,Can6,Can7,Can8,Can9,Can10
Chi: .word Chi1,Chi2,Chi3,Chi4,Chi5,Chi6,Chi7,Chi8,Chi9,Chi10,Chi11,Chi12

# bang tra thu trong tuan
sun:	.asciiz "chu nhat"
mon:	.asciiz "thu hai"
tue:	.asciiz "thu ba"
wed:	.asciiz "thu tu"
thu:	.asciiz "thu nam"
fri:	.asciiz "thu sau"
sat:	.asciiz "thu bay"
weeksday: 
	.word sun,mon,tue,wed,thu,fri,sat
	.word 0 # null char
	
Temp2: .space 2
TempYear: .space 4
text1: .asciiz "\nNam nhuan 1: "
text2: .asciiz"\nNam nhuan 2: "


# Menu
menu_array: .word menu_0,menu_1,menu_2,menu_2_1,menu_2_2,menu_2_3,menu_3,menu_4,menu_5,menu_6,menu_7,menu_8,menu_9
menu_0: .asciiz "Ban hay chon 1 trong cac thao tac duoi day:\n"
menu_1: .asciiz "\t1.Xuat chuoi TIME theo dinh dang DD/MM/YYYY\n"
menu_2: .asciiz "\t2.Chuyen doi chuoi TIME thanh mot trong cac dinh dang sau:\n"
menu_2_prompt: .asciiz "Ban hay chon dinh dang muon chuyen doi: "
menu_2_1: .asciiz "\t\tA.MM/DD/YYYY\n"
menu_2_2: .asciiz "\t\tB.Month DD, YYYY\n"
menu_2_3: .asciiz "\t\tC.DD Month, YYYY\n"
menu_3: .asciiz "\t3.Kiem tra nam trong chuoi TIME co phai nam nhuan khong\n"
menu_3_t: .asciiz " la nam nhuan"
menu_3_f: .asciiz " la nam thuong"
menu_4: .asciiz "\t4.Cho biet ngay vua nhap la ngay thu may trong tuan\n"
menu_4_1: .asciiz " la "
menu_5: .asciiz "\t5.Cho biet ngay vua nhap la ngay thu may ke tu ngay 1/1/1\n"
menu_5_1: .asciiz "Khoang cach tu ngay 01/01/0001 den ngay "
menu_5_2: .asciiz " la "
menu_5_3: .asciiz " ngay"
menu_6: .asciiz "\t6.Cho biet can chi cua nam vua nhap\n"
menu_6_1: .asciiz " la nam "
menu_7: .asciiz "\t7.Cho biet khoang thoi gian giua chuoi TIME_1 va TIME_2\n"
menu_7_1: .asciiz "Khoang cach tu ngay "
menu_7_2: .asciiz " den ngay "
menu_7_3: .asciiz " la "
menu_7_4: .asciiz " ngay"
menu_8: .asciiz "\t8.Cho biet 2 nam nhuan gan nhat voi nam trong chuoi TIME\n"
menu_8_1: .asciiz "Hai nam nhuan gan voi "
menu_8_2: .asciiz " nhat la "
menu_8_3: .asciiz " va "
menu_9: .asciiz "\t9.Nhap input tu file input.txt va xuat ket qua toan bo cac chuc nang tren ra file output.txt\n"
menu_9_1f: .asciiz "Chuoi Time_1 khong hop le"
menu_9_2f: .asciiz "Chuoi Time_2 khong hop le"
menu_9_3f: .asciiz "Chuoi Time_1 va Time_2 khong hop le"
menu_9_newline: .asciiz "\r\n"
menu_9_1: .asciiz "1. "
menu_9_2A: .asciiz "2A. "
menu_9_2B: .asciiz "2B. "
menu_9_2C: .asciiz "2C. "
menu_9_3: .asciiz "3. "
menu_9_4: .asciiz "4. "
menu_9_5: .asciiz "5. "
menu_9_6: .asciiz "6. "
menu_9_7: .asciiz "7. "
menu_9_8: .asciiz "8. "
menu_prompt: .asciiz "Nhap lua chon cua ban: "
menu_result: .asciiz "Ket qua: "


	.text
	.globl main
main:	
	jal Menu
	
	j exit
	
	
# ===== Menu =====================
# void Menu()
Menu:
	# push stack
	subu $sp, $sp, 20
	sw $ra, ($sp)
	sw $s0, 4($sp)
	sw $t0, 8($sp)
	sw $t1, 12($sp)
	sw $t2, 16($sp)
	
	
	# in menu
	la $s0, menu_array
	li $t0, 0
Menu_Loop:
	lw $a0, ($s0)
	li $v0, 4
	syscall
	addu $s0, $s0, 4
	addi $t0, $t0, 1
	bne $t0, 13, Menu_Loop
	
	
	# lua chon
	la $a0, menu_prompt
	li $v0, 4
	syscall

	li $v0, 5
	syscall
	sw $v0, selection
	
	beq $v0, 9, Menu_9
	
	lw $a0, selection
	jal Nhap
	
	# xu ly yeu cau
	lw $s0, selection
	
	
	beq $s0, 1, Menu_1
	beq $s0, 2, Menu_2
	beq $s0, 3, Menu_3
	beq $s0, 4, Menu_4
	beq $s0, 5, Menu_5
	beq $s0, 6, Menu_6
	beq $s0, 7, Menu_7
	beq $s0, 8, Menu_8
Menu_1:
	la $a0, menu_result
	li $v0, 4
	syscall
	
	la $a0, TIME_1
	li $v0, 4
	syscall
	j Menu_Exit
	
	
Menu_2:
	la $a0, menu_2_prompt
	li $v0, 4
	syscall
	
	li $v0, 12
	syscall
	
	la $a0, TIME_1
	move $a1, $v0
	jal Convert
	
	la $a0, newline
	li $v0, 4
	syscall
	
	la $a0, menu_result
	li $v0, 4
	syscall
	
	la $a0, Type
	li $v0, 4
	syscall
	j Menu_Exit
	
	
Menu_3:
	la $a0, menu_result
	li $v0, 4
	syscall
	
	lw $a0, y1
	jal LeapYear
	beqz $v0, Menu_3_F
Menu_3_T:	
	lw $a0, y1
	li $v0, 1
	syscall
	
	la $a0, menu_3_t
	li $v0, 4
	syscall
	
	j Menu_Exit
Menu_3_F:
	lw $a0, y1
	li $v0, 1
	syscall
	
	la $a0, menu_3_f
	li $v0, 4
	syscall
	
	j Menu_Exit
	
	
Menu_4:
	la $a0, menu_result
	li $v0, 4
	syscall
	
	lw $a0, d1
	lw $a1, m1
	lw $a2, y1
	jal WeekDay
	
	move $s0, $v0
	
	la $a0, TIME_1
	li $v0, 4
	syscall
	
	la $a0, menu_4_1
	syscall
	
	la $a0, ($s0)
	li $v0, 4
	syscall
	j Menu_Exit
	
	
Menu_5:
	la $a0, menu_result
	li $v0, 4
	syscall	
	
	la $a0, menu_5_1
	li $v0, 4
	syscall
	
	la $a0, TIME_1
	syscall
	
	la $a0, menu_5_2
	syscall
	
	lw $a0, d1
	lw $a1, m1
	lw $a2, y1
	jal DayFrom1
	
	move $a0, $v0
	li $v0, 1
	syscall
	
	la $a0, menu_5_3
	li $v0, 4
	syscall
	j Menu_Exit
	
Menu_6:
	la $a0, menu_result
	li $v0, 4
	syscall
	
	lw $a0, y1
	li $v0, 1
	syscall
	
	la $a0, menu_6_1
	li $v0, 4
	syscall
	
	lw $a0, y1
	li $v0, 0
	jal CanChi
	
	la $a0, ($v0)
	li $v0, 4
	syscall
	
	la $a0, _space
	li $v0, 4
	syscall
	
	la $a0, ($v1)
	li $v0, 4
	syscall
	
	j Menu_Exit
	
	
Menu_7:
	la $a0, menu_result
	li $v0, 4
	syscall
	
	la $a0, menu_7_1
	li $v0, 4
	syscall
	
	la $a0, TIME_1
	syscall
	
	la $a0, menu_7_2
	syscall
	
	la $a0, TIME_2
	syscall
	
	la $a0, menu_7_3
	syscall
	
	la $a0, TIME_1
	la $a1, TIME_2
	jal DateDiff
	
	move $a0, $v0
	li $v0, 1
	syscall
	
	la $a0, menu_7_4
	li $v0, 4
	syscall
	
	j Menu_Exit


Menu_8:
	la $a0, menu_result
	li $v0, 4
	syscall
	
	la $a0, menu_8_1
	li $v0, 4
	syscall
	
	lw $a0, y1
	li $v0, 1
	syscall
	
	la $a0, menu_8_2
	li $v0, 4
	syscall
	
	la $a0, TIME_1
	jal Find_Leap
	move $a0, $v1
	move $s0, $v0
	li $v0, 1
	syscall
	
	la $a0, menu_8_3
	li $v0, 4
	syscall
	
	move $a0, $s0
	li $v0, 1
	syscall
	
	j Menu_Exit
	
	
Menu_9:
	# doc file
	jal Doc_File
	jal XuLiInput
	move $t1, $v0
	move $t2, $v1
	beqz $t1, Menu_9_1Invalid
	beqz $t2, Menu_9_2Invalid
	
	
	# cau 1
	la $a0, menu_9_1
	jal Ghi_Fout
	la $a0, TIME_1
	jal Ghi_Fout
	la $a0, menu_9_newline
	jal Ghi_Fout
	
	
	# cau 2
	la $a0, menu_9_2A
	jal Ghi_Fout
	la $a0, TIME_1
	li $a1, 'A'
	jal Convert
	la $a0, Type
	jal Ghi_Fout
	la $a0, menu_9_newline
	jal Ghi_Fout
	la $a0, menu_9_2B
	jal Ghi_Fout
	la $a0, TIME_1
	li $a1, 'B'
	jal Convert
	la $a0, Type
	jal Ghi_Fout
	la $a0, menu_9_newline
	jal Ghi_Fout
	la $a0, menu_9_2C
	jal Ghi_Fout
	la $a0, TIME_1
	li $a1, 'C'
	jal Convert
	la $a0, Type
	jal Ghi_Fout
	la $a0, menu_9_newline
	jal Ghi_Fout
	
	
	# cau 3
	la $a0, menu_9_3
	jal Ghi_Fout
	
	lw $a0, y1
	jal itos
	la $a0, buffer_1024
	jal Ghi_Fout
	
	lw $a0, y1
	jal LeapYear
	beqz $v0, Menu_9_3_F
Menu_9_3_T:
	la $a0, menu_3_t
	jal Ghi_Fout
	j Menu_9_3_Continue

Menu_9_3_F:
	la $a0, menu_3_f
	jal Ghi_Fout

Menu_9_3_Continue:
	la $a0, menu_9_newline
	jal Ghi_Fout
	

	# cau 4
	la $a0, menu_9_4
	jal Ghi_Fout
	la $a0, TIME_1
	jal Ghi_Fout
	
	lw $a0, d1
	lw $a1, m1
	lw $a2, y1
	jal WeekDay
	
	move $s0, $v0
	
	la $a0, menu_4_1
	jal Ghi_Fout
	la $a0, ($s0)
	jal Ghi_Fout
	la $a0, menu_9_newline
	jal Ghi_Fout
	
	
	# cau 5
	la $a0, menu_9_5
	jal Ghi_Fout
	la $a0, menu_5_1
	jal Ghi_Fout
	la $a0, TIME_1
	jal Ghi_Fout
	la $a0, menu_5_2
	jal Ghi_Fout
	
	lw $a0, d1
	lw $a1, m1
	lw $a2, y1
	jal DayFrom1
	
	move $a0, $v0
	jal itos
	
	la $a0, buffer_1024
	jal Ghi_Fout
	la $a0, menu_5_3
	jal Ghi_Fout
	la $a0, menu_9_newline
	jal Ghi_Fout
	
	
	# cau 6
	la $a0, menu_9_6
	jal Ghi_Fout
	lw $a0, y1
	jal itos
	la $a0, buffer_1024
	jal Ghi_Fout
	la $a0, menu_6_1
	jal Ghi_Fout
	lw $a0, y1
	jal CanChi
	la $a0, ($v0)
	jal Ghi_Fout
	la $a0,_space
	jal Ghi_Fout
	la $a0, ($v1)
	jal Ghi_Fout
	la $a0, menu_9_newline
	jal Ghi_Fout
	
	
	# cau 7
	la $a0, menu_9_7
	jal Ghi_Fout
	la $a0, menu_7_1
	jal Ghi_Fout
	la $a0, TIME_1
	jal Ghi_Fout
	la $a0, menu_7_2
	jal Ghi_Fout
	la $a0, TIME_2
	jal Ghi_Fout
	la $a0, menu_7_3
	jal Ghi_Fout
	
	la $a0, TIME_1
	la $a1, TIME_2
	jal DateDiff
	move $a0, $v0
	jal itos
	la $a0, buffer_1024
	jal Ghi_Fout
	la $a0, menu_7_4
	jal Ghi_Fout
	la $a0, menu_9_newline
	jal Ghi_Fout
	
	
	# cau 8
	la $a0, menu_9_8
	jal Ghi_Fout
	la $a0, menu_8_1
	jal Ghi_Fout
	lw $a0, y1
	jal itos
	la $a0, buffer_1024
	jal Ghi_Fout
	la $a0, menu_8_2
	jal Ghi_Fout
	
	la $a0, TIME_1
	jal Find_Leap
	move $t0, $v0
	move $a0, $v1
	jal itos
	la $a0, buffer_1024
	jal Ghi_Fout
	la $a0, menu_8_3
	jal Ghi_Fout
	move $a0, $t0
	jal itos
	la $a0, buffer_1024
	jal Ghi_Fout
	la $a0, menu_9_newline
	jal Ghi_Fout
	j Menu_9_Exit
	
Menu_9_1Invalid:
	beqz $t2, Menu_9_3Invalid
	la $a0, menu_9_1f
	jal Ghi_Fout
	j Menu_9_Exit
Menu_9_2Invalid:
	beqz $t1, Menu_9_3Invalid
	la $a0, menu_9_2f
	jal Ghi_Fout
	j Menu_9_Exit
Menu_9_3Invalid:
	la $a0, menu_9_3f
	jal Ghi_Fout
	j Menu_9_Exit
	
Menu_9_Exit:
	jal Xuat_File

Menu_Exit:
	# pop stack
	lw $t2, 16($sp)
	lw $t1, 12($sp)
	lw $t0, 8($sp)
	lw $s0, 4($sp)
	lw $ra, ($sp)
	addu $sp, $sp, 20
	
	# ket thuc ham
	jr $ra
# ================================
	

# ===== Tach DD, MM, YYYY ========
# void Time($a0: string DD/MM/YYYY, $a1: int 1 for D1, 2 for D2)
Time:
	# push stack
	subu $sp, $sp, 28
	sw $ra, ($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	sw $s2, 12($sp)
	sw $s3, 16($sp)
	sw $t0, 20($sp)
	sw $t1, 24($sp)
	
	la $s0, ($a0)
	
	
	# trich ngay
	lb $a0, 0($s0)
	jal atoi
	mul $t0, $v0, 10	
	
	lb $a0, 1($s0)
	jal atoi
	move $t1, $v0
	
	add $s1, $t0, $t1  # day = $t0 + $t1
	
	
	# trich thang
	lb $a0, 3($s0)
	jal atoi
	mul $t0, $v0, 10	
	
	lb $a0, 4($s0)
	jal atoi
	move $t1, $v0
	
	add $s2, $t0, $t1  # month = $t0 + $t1
	
	
	# trich nam
	lb $a0, 6($s0)
	jal atoi
	mul $t0, $v0, 1000
	add $s3, $0, $t0
	
	lb $a0, 7($s0)
	jal atoi
	mul $t0, $v0, 100
	add $s3, $s3, $t0
	
	lb $a0, 8($s0)
	jal atoi
	mul $t0, $v0, 10
	add $s3, $s3, $t0
	
	lb $a0, 9($s0)
	jal atoi
	add $s3, $s3, $v0
	
	
	# luu vao dX mX yX
	beq $a1, 2, Time_Save2
Time_Save1:	
	sw $s1, d1
	sw $s2, m1
	sw $s3, y1
	j Time_Exit
	
Time_Save2:
	sw $s1, d2
	sw $s2, m2
	sw $s3, y2

Time_Exit:
	# pop stack
	lw $t1, 24($sp)
	lw $t0, 20($sp)
	lw $s3, 16($sp)
	lw $s2, 12($sp)
	lw $s1, 8($sp)
	lw $s0, 4($sp)
	lw $ra, ($sp)
	addu $sp, $sp, 28
	
	# ket thuc ham	
	jr $ra
# ================================


# ===== Chuan hoa DD, MM =========
# void Format_DM($a0: string)
Format_DM:
	# push stack
	subu $sp, $sp, 12
	sw $ra, ($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	
	# dua ki tu sang phai, them so 0 o truoc
	li $s0, 48
	lb $s1, 0($a0)
	sb $s0, 0($a0)
	sb $s1, 1($a0)
	sb $0, 2($a0)
	li $s0, 0
	
	# pop stack
	lw $s1, 8($sp)
	lw $s0, 4($sp)
	lw $ra, ($sp)
	addu $sp, $sp, 12
	
	# ket thuc ham
	jr $ra
# ================================


# ===== Chuan hoa YEAR ===========
# void Format_YR($a0: string, $a1: int strlen)
Format_YR:
	# push stack
	subu $sp, $sp, 16
	sw $ra, ($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	sw $t0, 12($sp)
	
	# push tung ki tu vao stack
	la $s0, ($a0)
	li $t0, 0  # i = 0
Format_YR_push:
	lb $s1, ($s0)
	
	subu $sp, $sp, 4
	sw $s1, ($sp)
	
	addu $s0, $s0, 1
	addi $t0, $t0, 1  # i = i + 1
	bne $t0, $a1, Format_YR_push  # do while (i != strlen)
	
	# ghi 0 vao cac ki tu truoc
	la $s0, ($a0)
	li $s1, '0'
	li $t0, 0  # i = 0
Format_YR_fill0:
	sb $s1, ($s0)
	addu $s0, $s0, 1
	addi $t0, $t0, 1
	bne $t0, 4, Format_YR_fill0  # do while (i != 4)
	
	# pop tung ki tu
	addu $s0, $a0, 3
	li $t0, 0
Format_YR_pop:
	lw $s1, ($sp)
	addu $sp, $sp, 4
	
	sb $s1, ($s0)
	
	subu $s0, $s0, 1
	addi $t0, $t0, 1
	bne $t0, $a1, Format_YR_pop
	
	
	# pop stack
	lw $t0, 12($sp)
	lw $s1, 8($sp)
	lw $s0, 4($sp)
	lw $ra, ($sp)
	addu $sp, $sp, 16
	
	# ket thuc ham
	jr $ra
# ================================


# ===== Ham kiem tra input =======
# int KiemTra_Input($a0: string)
# return $v0: int 1 if valid, 0 if error
KiemTra_Input:
	# push stack
	subu $sp, $sp, 16
	sw $ra, ($sp)
	sw $s1, 4($sp)
	sw $s2, 8($sp)
	sw $s6, 12($sp)
	
	# lay strlen
	jal strlen
	move $s6, $v0
	
	# check tung ki tu
KiemTra_Input_loop:
	lb $s2, ($a0)
	beq $s2, 32, KiemTra_Input_space
	blt $s2, 48, Input_Invalid  # if ($s2 < '0')
	bgt $s2, 57, Input_Invalid  # if ($s2 > '9')
KiemTra_Input_space:
	addi $a0, $a0, 1
	subi $s6, $s6, 1
	
	beq $s6, $0, Input_Valid
	j KiemTra_Input_loop
	
Input_Valid:
	li $v0, 1
	j KiemTra_Input_Exit
Input_Invalid:
	li $v0, 0
	j KiemTra_Input_Exit

KiemTra_Input_Exit:
	# pop stack
	lw $s6, 12($sp)
	lw $s2, 8($sp)
	lw $s1, 4($sp)
	lw $ra, ($sp)
	addu $sp, $sp, 16
	
	# ket thuc ham	
	jr $ra
# ================================



# ===== Kiem tra ngay hop le =====
# int Check($a0: int mode)
# return $v0: 1 if valid, 0 if invalid
Check:  
	# Push Stack
 	subu $sp, $sp, 20
	sw $ra, ($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	sw $s2, 12($sp)
	sw $t0, 16($sp)

	# Check Mode
	li $t0,1
	beq $a0,$t0,Check_Load_TIME_1
	j Check_Load_TIME_2
Check_Load_TIME_1:
	lw $s0,d1
	lw $s1,m1
	lw $s2,y1
	j Check_Special

Check_Load_TIME_2:
	lw $s0,d2
	lw $s1,m2
	lw $s2,y2
	j Check_Special

Check_Special:
	#Check nam
	li $t0,1582
	bne $s2,$t0,Check_Next
	li $t0,10
	bne $s1,$t0,Check_Next
	li $t0,5
	blt $s0,$t0,Check_Next
	li $t0,14
	bgt $s0,$t0,Check_Next
	j Check_False
Check_Next:
	# Check Month <= 0 ?
	blez $s1,Check_False

	#Check Month > 12 ?
	sub $t0,$s1,12
	bgtz $t0,Check_False
	
	# Check Month = 2
	li $t0,2
	beq $s1,$t0,Check_Month_2

	# Check Month
	div $s1,$t0
	mfhi $t0
	beq $t0,$0,Check_Month_Chan
	j Check_Month_Le
Check_Month_2:
	# Check Day < 0 ?
	blez $s0,Check_False

	# Check Day > 29 ?
	sub $t0,$s0,29
	bgtz $t0,Check_False

	# Check Day 29 ? 
	bne $t0,$0,Check_True

	# Day = 29 => Check LeapYear
	la $a0, ($s2)
	jal LeapYear
	move $t0,$v0
	beq $t0,,$0,Check_False
	j Check_True

Check_Month_Chan:
	sub $t0,$s1,7	
	bltz $t0,Check_Month_30_Days
	j Check_Month_31_Days

Check_Month_Le:
	sub $t0,$s1,8	
	bltz $t0,Check_Month_31_Days
	j Check_Month_30_Days

Check_Month_30_Days:
	# Check Day < 0 ?
	blez $s0,Check_False

	# Check Day > 30 ?
	sub $t0,$s0,30
	bgtz $t0,Check_False
	j Check_True
Check_Month_31_Days:
	# Check Day < 0 ?
	blez $s0,Check_False

	# Check Day > 31 ?
	sub $t0,$s0,31
	bgtz $t0,Check_False
	j Check_True
	
Check_False:
	li $v0,0
	j Check_Exit

Check_True:
	li $v0,1
	j Check_Exit

Check_Exit:
	# Pop Stack
	lw $ra, ($sp)
	lw $s0, 4($sp)
	lw $s1, 8($sp)
	lw $s2, 12($sp)
	lw $t0, 16($sp)
	addu $sp, $sp, 20
	# End Function
	jr $ra
# ================================




# ===== Ham nhap bang tay ========
# void Nhap($a0: int mode)
Nhap:
	# push stack
	subu $sp, $sp, 24
	sw $ra, ($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	sw $s2, 12($sp)
	sw $s3, 16($sp)
	sw $t0, 20($sp)
	
	move $t0, $a0
	
	# Nhap 1 Date
	la $a0, tb_input_1
	li $v0, 4
	syscall
Nhap_1:
	# Nhap ngay
	li $s0, 0
	la $a0, tb_input_ngay
	li $v0, 4
	syscall
	
	la $a0, input_2
	li $a1, 4
	li $v0, 8
	syscall
	
	# Chuan hoa chuoi ngay
	la $a0, input_2
	jal strlen
	beq $v0, 2, Nhap_1_day_skip
	la $a0, input_2
	jal Format_DM
	
Nhap_1_day_skip:
	la $a0, input_2
	jal KiemTra_Input
	beqz $v0, Nhap_1_error
	
	# chuyen chuoi ngay da nhap thanh int
	li $s3, 10
	la $s1, input_2
	lb $a0, 0($s1)
	jal atoi
	move $s2, $v0
	mult $s2, $s3
	mflo $s3
	
	lb $a0, 1($s1)
	jal atoi
	move $s2, $v0
	add $s2, $s2, $s3
	
	sw $s2, d1  # luu vao d1
	
	
	# Nhap thang
	la $a0, tb_input_thang
	li $v0, 4
	syscall
	
	la $a0, input_2
	li $a1, 4
	li $v0, 8
	syscall
	
	# Chuan hoa chuoi thang
	la $a0, input_2
	jal strlen
	beq $v0, 2, Nhap_1_month_skip
	la $a0, input_2
	jal Format_DM
	
Nhap_1_month_skip:
	la $a0, input_2
	jal KiemTra_Input
	beqz $v0, Nhap_1_error
	
	# chuyen chuoi thang da nhap thanh int
	li $s3, 10
	la $s1, input_2
	lb $a0, 0($s1)
	jal atoi
	move $s2, $v0
	mult $s2, $s3
	mflo $s3
	
	lb $a0, 1($s1)
	jal atoi
	move $s2, $v0
	add $s2, $s2, $s3
	
	sw $s2, m1  # luu vao m1
	
	
	# Nhap nam
	la $a0, tb_input_nam
	li $v0, 4
	syscall
	
	la $a0, input_4
	li $a1, 6
	li $v0, 8
	syscall
	
	# Chuan hoa chuoi nam
	la $a0, input_4
	jal strlen
	beq $v0, 4, Nhap_1_year_skip
	la $a0, input_4
	la $a1, ($v0)
	jal Format_YR
	
Nhap_1_year_skip:
	la $a0, input_4
	jal KiemTra_Input
	beqz $v0, Nhap_1_error
	
	# chuyen chuoi nam da nhap thanh int
	li $s3, 1000
	li $s2, 0
	la $s1, input_4
Nhap_nam_1_loop:
	lb $a0, ($s1)	
	jal atoi
	mult $v0, $s3
	mflo $s0
	add $s2, $s2, $s0
	div $s3, $s3, 10
	addi $s1, $s1, 1
	bnez $s3, Nhap_nam_1_loop
	sw $s2, y1
	
	li $a0, 1
	jal Check
	beqz $v0, Nhap_1_error
	
	beq $t0, 7, Nhap_2
	j Nhap_Exit
	
Nhap_1_error:
	la $a0, tb_input_error
	li $v0, 4
	syscall
	
	j Nhap_1
	

	# Nhap 2 Date
Nhap_2:	
	li $s0, 0
	la $a0, tb_input_2
	li $v0, 4
	syscall
	
	
	# Nhap ngay
	la $a0, tb_input_ngay
	li $v0, 4
	syscall
	
	la $a0, input_2
	li $a1, 4
	li $v0, 8
	syscall
	
	# Chuan hoa chuoi ngay
	la $a0, input_2
	jal strlen
	beq $v0, 2, Nhap_2_day_skip
	la $a0, input_2
	jal Format_DM
	
Nhap_2_day_skip:
	la $a0, input_2
	jal KiemTra_Input
	beqz $v0, Nhap_2_error
	
	# chuyen chuoi ngay da nhap thanh int
	li $s3, 10
	la $s1, input_2
	lb $a0, 0($s1)
	jal atoi
	move $s2, $v0
	mult $s2, $s3
	mflo $s3
	lb $a0, 1($s1)
	jal atoi
	move $s2, $v0
	add $s2, $s2, $s3
	
	sw $s2, d2  # luu vao d1
	
	
	# Nhap thang
	la $a0, tb_input_thang
	li $v0, 4
	syscall
	
	la $a0, input_2
	li $a1, 4
	li $v0, 8
	syscall
	
	# Chuan hoa chuoi thang
	la $a0, input_2
	jal strlen
	beq $v0, 2, Nhap_2_month_skip
	la $a0, input_2
	jal Format_DM
	
Nhap_2_month_skip:
	la $a0, input_2
	jal KiemTra_Input
	beqz $v0, Nhap_2_error
	
	# chuyen chuoi thang da nhap thanh int
	li $s3, 10
	la $s1, input_2
	lb $a0, 0($s1)
	jal atoi
	move $s2, $v0
	mult $s2, $s3
	mflo $s3
	
	lb $a0, 1($s1)
	jal atoi
	move $s2, $v0
	add $s2, $s2, $s3
	
	sw $s2, m2  # luu vao m1
	
	
	# Nhap nam
	la $a0, tb_input_nam
	li $v0, 4
	syscall
	
	la $a0, input_4
	li $a1, 6
	li $v0, 8
	syscall
	
	# Chuan hoa chuoi nam
	la $a0, input_4
	jal strlen
	beq $v0, 4, Nhap_2_year_skip
	la $a0, input_4
	la $a1, ($v0)
	jal Format_YR
	
Nhap_2_year_skip:	
	la $a0, input_4
	jal KiemTra_Input
	beqz $v0, Nhap_2_error
	
	# chuyen chuoi nam da nhap thanh int
	li $s3, 1000
	li $s2, 0
	la $s1, input_4
Nhap_nam_2_loop:
	lb $a0, ($s1)	
	jal atoi
	mult $v0, $s3
	mflo $s0
	add $s2, $s2, $s0
	div $s3, $s3, 10
	addi $s1, $s1, 1
	bnez $s3, Nhap_nam_2_loop
	sw $s2, y2
	
	li $a0, 2
	jal Check
	beqz $v0, Nhap_2_error
	
	j Nhap_Exit
	
Nhap_2_error:
	la $a0, tb_input_error
	li $v0, 4
	syscall

	j Nhap_2

	
Nhap_Exit:
	# luu d,m,y vao TIME
	lw $a0, d1
	lw $a1, m1
	lw $a2, y1
	la $a3, TIME_1
	jal Date
	
	lw $a0, d2
	lw $a1, m2
	lw $a2, y2
	la $a3, TIME_2
	jal Date
	
	# pop stack
	lw $t0, 20($sp)
	lw $s3, 16($sp)
	lw $s2, 12($sp)
	lw $s1, 8($sp)
	lw $s0, 4($sp)
	lw $ra, ($sp)
	addu $sp, $sp, 24
	
	# ket thuc ham	
	jr $ra
# ================================


# ===== Ham ghi fout_buffer ======
# void Ghi_Fout($a0: string)
Ghi_Fout:
	# push stack
	subu $sp, $sp, 20
	sw $ra, ($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	sw $t0, 12($sp)
	sw $t6, 16($sp)
	
	la $s0, ($a0)
	la $s1, fout_buffer
	
	# lay vi tri hien tai cua buffer
	la $a0, fout_buffer
	jal strlen_with_newline
	addu $s1, $s1, $v0
	
	# copy string vao buffer
Ghi_Fout_loop:	
	lb $t0, ($s0)
	sb $t0, ($s1)
	addi $s0, $s0, 1
	addi $s1, $s1, 1
	bnez $t0, Ghi_Fout_loop

	# pop stack
	lw $t6, 16($sp)
	lw $t0, 12($sp)
	lw $s1, 8($sp)
	lw $s0, 4($sp)
	lw $ra, ($sp)
	addu $sp, $sp, 20
	
	# ket thuc function
	jr $ra
# ================================


# ===== Xu li file input =========
# int[] XuLiInput()
# return $v0: TIME_1 valid (1) or invalid(0); $v1: TIME_2 valid or invalid
XuLiInput:
	# push stack
	subu $sp, $sp, 32
	sw $ra, ($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	sw $s2, 12($sp)
	sw $t0, 16($sp)
	sw $t1, 20($sp)
	sw $t2, 24($sp)
	sw $t6, 28($sp)
	
	la $s0, fin_buffer
	
	# trich TIME_1
	la $t0, TIME_1
	li $t6, 0  # i = 0
XuLiInput_GetD1_loop:
	lb $t1, ($s0)
	sb $t1, ($t0)
	addu $t0, $t0, 1
	addu $s0, $s0, 1
	addi $t6, $t6, 1
	bne $t6, 10, XuLiInput_GetD1_loop
	
	la $a0, TIME_1
	jal KiemTra_Input
	beqz $v0, XuLiInput_GetD1_Invalid
	li $s1, 1
	
	li $t1, 47  # '/'
	la $t0, TIME_1
	sb $t1, 2($t0)
	sb $t1, 5($t0)
	la $a0, TIME_1
	li $a1, 1
	jal Time
	li $a0, 1
	jal Check
	beqz $v0, XuLiInput_GetD1_Invalid
	j XuLiInput_GetD2
	
	
XuLiInput_GetD1_Invalid:
	li $s1, 0
	
XuLiInput_GetD2:
	addu $s0, $s0, 2  # skip \r\n
	# trich TIME_2
	la $t0, TIME_2
	li $t6, 0  # i = 0
XuLiInput_GetD2_loop:
	lb $t1, ($s0)
	sb $t1, ($t0)
	addu $t0, $t0, 1
	addu $s0, $s0, 1
	addi $t6, $t6, 1
	bne $t6, 10, XuLiInput_GetD2_loop
	
	la $a0, TIME_2
	jal KiemTra_Input
	beqz $v0, XuLiInput_GetD2_Invalid
	li $s2, 1
	
	li $t1, 47  # '/'
	la $t0, TIME_2
	sb $t1, 2($t0)
	sb $t1, 5($t0)
	la $a0, TIME_2
	li $a1, 2
	jal Time
	li $a0, 2
	jal Check
	beqz $v0, XuLiInput_GetD2_Invalid
	j XuLiInput_Exit
	
	
XuLiInput_GetD2_Invalid:
	li $s2, 0
	
XuLiInput_Exit:	
	move $v0, $s1
	move $v1, $s2
	# pop stack
	lw $t6, 28($sp)
	lw $t2, 24($sp)
	lw $t1, 20($sp)
	lw $t0, 16($sp)
	sw $s2, 12($sp)
	sw $s1, 8($sp)
	lw $s0, 4($sp)
	lw $ra, ($sp)
	addu $sp, $sp, 32
	
	# ket thuc ham
	jr $ra
# ================================


# ===== Ham doc file input =======
# void Doc_FILE()
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
	move $s0, $v0  # input length
	
	# close input file
	move $a0, $s6
	li $v0, 16
	syscall
	
	# pop stack
	lw $ra, ($sp)
	lw $s6, 4($sp)
	addu $sp, $sp, 8
	
	# ket thuc ham	
	jr $ra
# ================================


# ===== Ham xuat file output =====
# void Xuat_FILE()
Xuat_File:
	# push stack
	subu $sp, $sp, 4
	sw $ra, ($sp)

	
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
	lw $ra, ($sp)
	addu $sp, $sp, 4
	
	# ket thuc ham	
	jr $ra
# ================================


# ==== Ham chuyen doi TIME =======
# void Convert($a0: string, $a1: char type)
Convert:
	# push stack
	subu $sp, $sp, 32
	sw $ra, ($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	sw $s2, 12($sp)
	sw $t0, 16($sp)
	sw $t1, 20($sp)
	sw $t2, 24($sp)
	sw $t3, 28($sp)
	
	la $s2, Type
	beq $a1, 'A', Convert_A
	
	# lay thang
	la $s0, ($a0)
	la $s1, Month_Name
	
	lb $a0, 4($s0)
	jal atoi
	move $t0, $v0
	
	lb $a0, 3($s0)
	jal atoi
	mul $t1, $v0, 10
	add $t0, $t0, $t1
	
	li $t1, 1 # i = 1
Convert_Find_Month:
	beq $t1, $t0, Convert_Skip 
	addu $s1, $s1, 4
	addi $t1, $t1, 1
	bne $t1, $t0, Convert_Find_Month  # while (i != month)
Convert_Skip:
	lw $t0, ($s1)

	beq $a1, 'B', Convert_B
	beq $a1, 'C', Convert_C
	
Convert_A:
	# copy /
	lb $t2, 2($a0)
	sb $t2, 2($s2)
	lb $t2, 5($a0)
	sb $t2, 5($s2)
	
	# copy nam
	lb $t2, 6($a0)
	sb $t2, 6($s2)
	lb $t2, 7($a0)
	sb $t2, 7($s2)
	lb $t2, 8($a0)
	sb $t2, 8($s2)
	lb $t2, 9($a0)
	sb $t2, 9($s2)
	
	# doi cho DD, MM
	# copy ngay
	lb $t2, 0($a0)
	sb $t2, 3($s2)
	lb $t2, 1($a0)
	sb $t2, 4($s2)
	
	lb $t2, 3($a0)
	sb $t2, 0($s2)
	lb $t2, 4($a0)
	sb $t2, 1($s2)
	
	j Convert_Exit
	
Convert_B:
	la $s1, Month_Name_Len
	mul $t1, $t1, 4
	addu $s1, $s1, $t1
	subu $s1, $s1, 4
	lw $t1, ($s1)
	
	# copy thang
	li $t2, 0  # i = 1
Convert_B_Month_Loop:
	lb $t3, ($t0)
	sb $t3, ($s2)
	addu $t0, $t0, 1
	addu $s2, $s2, 1
	addi $t2, $t2, 1
	bne $t2, $t1, Convert_B_Month_Loop  # while (i != month.strlen)
	
	li $t3, ' '
	sb $t3, ($s2)
	addu $s2, $s2, 1
	
	# copy ngay
	lb $t3, 0($s0)
	sb $t3, ($s2)
	addu $s2, $s2, 1
	lb $t3, 1($s0)
	sb $t3, ($s2)
	addu $s2, $s2, 1
	
	# ghi dau ,
	li $t3, ','
	sb $t3, ($s2)
	addu $s2, $s2, 1
	
	li $t3, ' '
	sb $t3, ($s2)
	addu $s2, $s2, 1
	
	# copy nam
	lb $t2, 6($s0)
	sb $t2, ($s2)
	addu $s2, $s2, 1
	lb $t2, 7($s0)
	sb $t2, ($s2)
	addu $s2, $s2, 1
	lb $t2, 8($s0)
	sb $t2, ($s2)
	addu $s2, $s2, 1
	lb $t2, 9($s0)
	sb $t2, ($s2)

	j Convert_Exit
	
Convert_C:
	# copy ngay
	lb $t3, 0($s0)
	sb $t3, ($s2)
	addu $s2, $s2, 1
	lb $t3, 1($s0)
	sb $t3, ($s2)
	addu $s2, $s2, 1
	
	li $t3, ' '
	sb $t3, ($s2)
	addu $s2, $s2, 1
	
	la $s1, Month_Name_Len
	mul $t1, $t1, 4
	addu $s1, $s1, $t1
	subu $s1, $s1, 4
	lw $t1, ($s1)
	
	# copy thang
	li $t2, 0  # i = 1
Convert_C_Month_Loop:
	lb $t3, ($t0)
	sb $t3, ($s2)
	addu $t0, $t0, 1
	addu $s2, $s2, 1
	addi $t2, $t2, 1
	bne $t2, $t1, Convert_C_Month_Loop  # while (i != month.strlen)
	
	# ghi dau ,
	li $t3, ','
	sb $t3, ($s2)
	addu $s2, $s2, 1
	
	li $t3, ' '
	sb $t3, ($s2)
	addu $s2, $s2, 1
	
	# copy nam
	lb $t2, 6($s0)
	sb $t2, ($s2)
	addu $s2, $s2, 1
	lb $t2, 7($s0)
	sb $t2, ($s2)
	addu $s2, $s2, 1
	lb $t2, 8($s0)
	sb $t2, ($s2)
	addu $s2, $s2, 1
	lb $t2, 9($s0)
	sb $t2, ($s2)
	
Convert_Exit:
	# pop stack
	lw $t3, 28($sp)
	lw $t2, 24($sp)
	lw $t1, 20($sp)
	lw $t0, 16($sp)
	lw $s2, 12($sp)
	lw $s1, 8($sp)
	lw $s0, 4($sp)
	lw $ra, ($sp)
	addu $sp, $sp, 32
	
	# ket thuc ham
	jr $ra
# ================================


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
	# Kiem tra xem co be hon 1582 ?
	sub $t0,$a0,1582
	bltz $t0,LeapYear_1582
	# Kiem tra co chia het cho 100 hay khong ? 
	li $t0,100
	div $a0,$t0
	mfhi $t0
	beq $t0,$0,Chia400
	li $s0,1
	j LeapYear_Exit
LeapYear_1582:
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
	subu $sp, $sp, 16
	sw $ra, ($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	sw $s2, 12($sp)
	
	addi $v0, $a0, '0'
	
	# pop stack
	lw $s2, 12($sp)
	lw $s1, 8($sp)
	lw $s0, 4($sp)
	lw $ra, ($sp)
	addu $sp, $sp, 16
	
	# ket thuc ham	
	jr $ra
# ================================

# ===== int to string ============
# void stoi($a0: int)
# saved to buffer_1024
itos:
	# push stack
	subu $sp, $sp, 16
	sw $ra, ($sp)
	sw $s0, 4($sp)
	sw $t0, 8($sp)
	sw $t1, 12($sp)
	
	move $s0, $a0
	
	li $t0, 0
itos_loop:
	div $s0, $s0, 10
	mfhi $t1
	addu $t1, $t1, '0'
	
	subu $sp, $sp, 4
	sw $t1, ($sp)
	
	addi $t0, $t0, 1
	bnez $s0, itos_loop
	
	la $s0, buffer_1024
itos_pop_loop:
	lw $t1, ($sp)
	addu $sp, $sp, 4
	sb $t1, ($s0)
	addu $s0, $s0, 1
	subi $t0, $t0, 1
	bnez $t0, itos_pop_loop
	
	li $t1, 0
	sb $t1, ($s0)
itos_Exit:
	# pop stack
	lw $t1, 12($sp)
	lw $t0, 8($sp)
	lw $s0, 4($sp)
	lw $ra, ($sp)
	addu $sp, $sp, 16
	
	# ket thuc ham
	jr $ra
# ================================

# ===== atoi =====================
# int atoi($a0: char 1 digit)
# return $v0: int
atoi:
	# push stack
	subu $sp, $sp, 4
	sw $ra, ($sp)
	
	subi $v0, $a0, '0'
	
	# pop stack
	lw $ra, ($sp)
	addu $sp, $sp, 4
	
	# ket thuc ham	
	jr $ra
# ================================


# ===== Lay do dai chuoi =========
# int strlen_with_newline($a0: string)
# return $v0: int strlen
strlen_with_newline:
	# push stack
	subu $sp, $sp, 24
	sw $ra, ($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	sw $s2, 12($sp)
	sw $t0, 16($sp)
	sw $t1, 20($sp)
	
	
	li $s0, 0
	la $s2, ($a0)
strlen_with_newline_loop:
	lb $s1, ($s2)
	beqz $s1, strlen_with_newline_end  # check null
	addi $s2, $s2, 1
	addi $s0, $s0, 1  # len = len + 1
	j strlen_loop
strlen_with_newline_end:
	move $v0, $s0
	
	# pop stack
	lw $t1, 20($sp)
	lw $t0, 16($sp)
	lw $s2, 12($sp)
	lw $s1, 8($sp)
	lw $s0, 4($sp)
	lw $ra, ($sp)
	addu $sp, $sp, 24
	
	# ket thuc ham	
	jr $ra
# ================================


# ===== Lay do dai chuoi =========
# int strlen($a0: string)
# return $v0: int strlen
strlen:
	# push stack
	subu $sp, $sp, 24
	sw $ra, ($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	sw $s2, 12($sp)
	sw $t0, 16($sp)
	sw $t1, 20($sp)
	
	la $t0, newline
	lb $t1, ($t0)
	
	li $s0, 0
	la $s2, ($a0)
strlen_loop:
	lb $s1, ($s2)
	beqz $s1, strlen_end  # check null
	beq $s1, $t1, strlen_end  # check newline
	addi $s2, $s2, 1
	addi $s0, $s0, 1  # len = len + 1
	j strlen_loop
strlen_end:
	move $v0, $s0
	
	# pop stack
	lw $t1, 20($sp)
	lw $t0, 16($sp)
	lw $s2, 12($sp)
	lw $s1, 8($sp)
	lw $s0, 4($sp)
	lw $ra, ($sp)
	addu $sp, $sp, 24
	
	# ket thuc ham	
	jr $ra
# ================================


# ===== Xuat TIME DD/MM/YYYY =====
# void Date($a0: int day, $a1: int month, $a2: int year, $a3: buffer of formatted string)
# ================
Date:
	# push stack
	subu $sp, $sp, 16
	sw $ra, ($sp)
	sw $s0, 4($sp)
	sw $s1, 8($sp)
	sw $s6, 12($sp)
	
	# convert day
	div $s0, $a0, 10
	mflo $s0
	mfhi $s1
	move $a0, $s0
	jal itoa
	move $s0, $v0
	move $a0, $s1
	jal itoa
	move $s1, $v0
	sb $s0, 0($a3)
	sb $s1, 1($a3)
	
	# add '/'
	addi $s0, $0, '/'
	sb $s0, 2($a3)
	
	# convert month
	div $s0, $a1, 10
	mflo $s0
	mfhi $s1
	move $a0, $s0
	jal itoa
	move $s0, $v0
	move $a0, $s1
	jal itoa
	move $s1, $v0
	sb $s0, 3($a3)
	sb $s1, 4($a3)
	
	# add '/'
	addi $s0, $0, '/'
	sb $s0, 5($a3)
	
	# convert year
	li $s6, 1 # i = 1
	move $s0, $a2
Date_YR_loop:
	# divide by 10 to get rightmost number
	div $s0, $s0, 10
	mflo $s0
	mfhi $s1
	move $a0, $s1
	jal itoa
	# push stack
	subu $sp, $sp, 4
	sw $v0, ($sp)
	
	addi $s6, $s6, 1
	beq $s6, 4, Date_i_equals_4 # if i == 4
	j Date_YR_loop
	
Date_i_equals_4:
	# pop stack 
	move $a0, $s0
	jal itoa
	sb $v0, 6($a3)
	
	lw $s0, ($sp)
	addu $sp, $sp, 4
	sb $s0, 7($a3)
	
	lw $s0, ($sp)
	addu $sp, $sp, 4
	sb $s0, 8($a3)
	
	lw $s0, ($sp)
	addu $sp, $sp, 4
	sb $s0, 9($a3)
	
	# pop stack
	lw $s6, 12($sp)
	lw $s1, 8($sp)
	lw $s0, 4($sp)
	lw $ra, ($sp)
	addu $sp, $sp, 16
	
	# ket thuc ham	
	jr $ra
# ================================


# Khoang cach giua 2 ngay TIME_1 va TIME_2
# int DateDiff($a0: str TIME_1,$a1 str TIME_2
DateDiff:
	# Push Stack
	subu $sp,$sp,28
	sw $ra,($sp)
	sw $a0,4($sp)
	sw $a1,8($sp)
	sw $s0, 12($sp)
	sw $s1, 16($sp)
	sw $t0, 20($sp)
	sw $t1, 24($sp)
	# Load TIME_1 and TIME_2
	la $t0,($a0)
	la $t1,($a1)
	# TIME_1 => d1,m1,y1
	li,$a1,1
	jal Time
	# TIME_2 => d2,m2,y2
	la $a0,($t1)
	li $a1,2
	jal Time

	lw $a0,d1
	lw $a1,m1
	lw $a2,y1
	# Day from 1/1/1 to TIME 1
	jal DayFrom1
	move $s0,$v0

	lw $a0,d2
	lw $a1,m2
	lw $a2,y2
	# Day from 1/1/1 to TIME 2
	jal DayFrom1
	move $s1,$v0
	# Distance from Time_1 to Time_2
	sub $t0,$s0,$s1
	bltz $t0,DateDiff_Am  # Minus
	j DateDiff_Exit
DateDiff_Am:
	sub $t0,$0,$t0
	j DateDiff_Exit
DateDiff_Exit:
	move $v0,$t0
	# Pop Stack
	lw $ra,($sp)
	lw $a0,4($sp)
	lw $a1,8($sp)
	lw $s0, 12($sp)
	lw $s1, 16($sp)
	lw $t0, 20($sp)
	lw $t1, 24($sp)
	addu $sp,$sp,28
	jr $ra
# ========================================================


#====== Ham tim nam nhuan gan nhat nam duoc chon ======
# int Find_Leap($a0: string)
# return $v0: Year1 < Selected Year, $v1: Year2 > Selected Year
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
	# Run For Year 1
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
	# copy yyyy to TempYear
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
Con:	# Convert char yyyy to int yyyy
	lw $a1,4($sp)
	# phan tu dau x1000
	lb $t1,($a1)
	subi $t1,$t1,'0'
	li $t2,1000
	mult $t1,$t2
	mflo $t1
	sw $t1,8($sp)
	addi $a1,$a1,1
	# phan tu 2 nhan 100
	lb $t2,($a1)
	subi $t2,$t2,'0'
	li $t1,100
	mult $t1,$t2
	mflo $t2
	lw $t1,8($sp)
	add $t1,$t1,$t2
	sw $t1,8($sp)
	addi $a1,$a1,1
	# phan tu 3 nhan 10
	lb $t1,($a1)
	subi $t1,$t1,'0'
	li $t2,10
	mult $t1,$t2
	mflo $t2
	lw $t1,8($sp)
	add $t1,$t1,$t2
	sw $t1,8($sp)
	addi $a1,$a1,1
	# phan tu 4 cong vao stack 8($sp)
	lb $t2,($a1)
	subi $t2,$t2,'0'
	lw $t1,8($sp)
	add $t1,$t1,$t2
	# pop stack
	move $v0,$t1
	lw $ra,($sp)
	lw $a1,4($sp)
	lw $t1,8($sp)
	lw $t2,12($sp)
	addu $sp,$sp,16
	jr $ra
#=======================================



# ===== ham Ngay thu may ke tu ngay 1/1/1 ( 1/1/1 la ngay thu 1) =====
# int DayFrom1($a0: int Day, $a1: int Month, $a2: int Year)
DayFrom1:
	# Push Stack
	subu $sp,$sp,28
	sw $ra,($sp)
	sw $t0,4($sp)
	sw $t1,8($sp)
	sw $t2,12($sp)
	sw $t3,16($sp)
	sw $s0,20($sp)
	sw $s1,24($sp)
	
	move $t0,$a0
	move $t1,$a1
	move $t2,$a2
	# Kiem tra dieu kien
	li $t3,3
	sub $t3,$t1,$t3
	blez $t3,Dayfrom1_XuLiDK
	j Dayfrom1_XuLi

Dayfrom1_XuLiDK:
	sub $t2,$t2,1
	add $t1,$t1,12
	j Dayfrom1_XuLi
Dayfrom1_XuLi:
	# +365 * year
	li $s0,0
	li $t3,365
	mult $t3,$t2
	mflo $t3
	add $s0,$s0,$t3
	# +year/4
	li $t3,4
	div $t2,$t3
	mflo $t3
	add $s0,$s0,$t3
	#-------------------
	# -year/100
	#li $t3,100
	#div $t2,$t3
	#mflo $t3
	#sub $s0,$s0,$t3
	# +year/400
	#li $t3,400
	#div $t2,$t3
	#mflo $t3
	#add $s0,$s0,$t3
	#------------------
	# +(153 * month +8)/5
	li $t3,153
	mult $t3,$t1
	mflo $s1
	add $s1,$s1,8
	li $t3,5
	div $s1,$t3
	mflo $t3
	add $s0,$s0,$t3
	# +day-400
	add $s0,$s0,$t0
	sub $s0,$s0,400
	#-------------
	#Xu li SAU TU 15/10/1582 ( khong ton tai cac ngay 5-14/18/2)
	li $t3,577737
	sub $t3,$s0,$t3
	bgez $t3,Dayfrom1_1582
	j Dayfrom1_Exit
Dayfrom1_1582:
	sub $s0,$s0,10
	# -year/100
	sub $t2,$t2,1600
	bltz $t2,Dayfrom1_Exit
	li $t3,100
	div $t2,$t3
	mflo $t3
	sub $s0,$s0,$t3
	# +year/400
	li $t3,400
	div $t2,$t3
	mflo $t3
	add $s0,$s0,$t3
	#add $s0,$s0,1
	j Dayfrom1_Exit
Dayfrom1_Exit:
	# return ket qua
	move $v0,$s0
	# popstack	
	lw $ra,($sp)
	lw $t0,4($sp)
	lw $t1,8($sp) 
	lw $t2,12($sp)
	lw $t3,16($sp)
	lw $s0,20($sp)
	lw $s1,24($sp)
	addu $sp,$sp,28
	jr $ra
#==========================


#==================ham tinh thu trong tuan===========================
# char * WeekDay($a0: ngay, $a1: thang, $a2: nam) : store address of the day at reg $v0 and return it
# dau thu tuc
WeekDay:
	# khai bao stack
	subi $sp,$sp,24
	# backup thanh ghi
	sw $ra,($sp)
	sw $t0,4($sp)
	sw $t1,8($sp)
	sw $s0,12($sp)  # bien luu ket qua
	sw $t2,16($sp)
	sw $t3,20($sp)
#than thu tuc
	li $t0,3
	bge $a1,$t0,start_cal  # thang>=3
	addi $a1,$a1,12
	subi $a2,$a2,1
	
start_cal:
	# 365*year + year/4 - year/100 + year/400 + day + (153*month+8)/5
	move $s0,$a0	# s0 = day
	
	li $t0,365
	mult $a2,$t0
	mflo $t0		
	add $s0,$s0,$t0 	# s0 = 365*year + day
	
	li $t0,4
	div $a2,$t0
	mflo $t0		
	add $s0,$s0,$t0 	# s0 = 365*year + year/4  + day
	
	li $t0,153
	mult $a1,$t0
	mflo $t0	 # 153*month
	
	li $t1,8
	add $t0,$t1,$t0	 # $t0 = 153*month + 8
	
	li $t1,5
	div $t0,$t1
	mflo $t0	 # $t0 = (153*month + 8) / 5
	add $s0,$s0,$t0	 # s0 = 365*year + year/4  + day + (153*month + 8) / 5
	
	sub $s0,$s0,400	# s0 = 365*year + year/4  + day + (153*month + 8) / 5 - 400
	
	li $t3,577737
	sub $t3,$s0,$t3
	bgez $t3,WeekDay_1582 # 1600 1700 1800 1900 2000 =>>>>> 
	j WeekDay_Exit
WeekDay_1582:
	sub $s0,$s0,10
	# -year/100
	add $t2,$a2,0
	sub $t2,$t2,1600  #100 200 300 400 .........1500 : 2 TH 1582 => 1599 | 1600- >>>>
	bltz $t2,WeekDay_Exit
	li $t3,100
	div $t2,$t3
	mflo $t3
	sub $s0,$s0,$t3
	# +year/400
	li $t3,400
	div $t2,$t3
	mflo $t3
	add $s0,$s0,$t3
	#add $s0,$s0,1
	j WeekDay_Exit
WeekDay_Exit:
	addi $s0,$s0,6
	li $t0,7
	div $s0,$t0
	mfhi $s0	 # s0= s0 mod 7
	
	li $t0,4
	mult $s0,$t0  # Tinh so byte can tang trong mang weeksday
	mflo $s0
	
	la $t0,0($s0)
	la $s0,weeksday
	addu $s0,$s0,$t0	
	lw $v0,0($s0)  # return address of day of week
#endWeekDay
	#tra thanh ghi
	lw $ra,($sp)
	lw $t0,4($sp)
	lw $t1,8($sp)
	
	lw $s0,12($sp)
	lw $t2,16($sp)
	lw $t3,20($sp)
	addu $sp,$sp,24
	jr $ra
#==============================


#=========== Ham tinh CanChi cua nam ===========
#=========== void CanChi($a0: int Year) ========
CanChi:
	# push stack
	subu	$sp,$sp,28
	sw	$ra,($sp)
	sw	$t0,4($sp)
	sw	$t1,8($sp)
	sw	$s0,12($sp)
	sw	$s1,16($sp)
	sw	$s2,20($sp)
	sw	$s3,24($sp)
	
	# Gan gia tri
	addi 	$s0,$a0,0		# Gan gia tri nam hien tai vao thanh ghi $s0 de tinh toan Can
	addi	$s1,$a0,0		# Gan gia tri nam hien tai vao thanh ghi $s0 de tinh toan Chi

	# Tinh Can
	addi	$t0,$zero,10
	addi	$s0,$s0,6
	div	$s0,$t0
	mfhi	$s0		# Ap dung cong thuc (nam+6)%10 de tinh vi tri trong mang Can va gan ket qua vao lai $s0

	# Tinh Chi
	addi	$t1,$zero,12
	add	$s1,$s1,8
	div	$s1,$t1
	mfhi	$s1		# Ap dung cong thuc (nam+8)%12 de tinh vi tri trong mang Chi va luu ket qua vao lai $s1
	
	# Tinh so byte can tang them de in phan tu trong mang Can va Chi
	addi	$t0,$zero,4	# Tao bien chua gia tri 4 va thuc hien nhan
		
	mult	$s0,$t0		
	mflo	$s0		# Tinh to?n so byte can tang trong mang Can	
	
	mult	$s1,$t0
	mflo	$s1		# Tinh toan so byte can tang trong mang Chi	
	
	# Xuat ra CanChi cua nam
	la	$t0,0($s0)	# Truyen so byte can tang cua mang Can va Chi vao 2 thanh ghi $t0,$t1
	la	$t1,0($s1)
	
	# Tang diachi vung nho len voi so byte da tinh de xuat ra chuoi Can cua nam
	la	$s0,Can
	addu	$s0,$s0,$t0
	lw	$s2,0($s0)
	
	# Tang diachi vung nho len voi so byte da tinh de xuat ra chuoi Chi cua nam
	la	$s0,Chi
	addu	$s0,$s0,$t1
	lw	$s3,0($s0)
	
	move $v0,$s2
	move $v1,$s3
	# pop stack
	lw $ra,($sp)
	lw $t0,4($sp)
	lw $t1,8($sp)
	lw $s0,12($sp)
	lw $s1,16($sp)
	sw $s2,20($sp)
	sw $s3,24($sp)
	addu $sp,$sp,28
	jr      $ra
# =======================
exit:
	li $v0, 10
	syscall
