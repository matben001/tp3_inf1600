.text
.globl factorielle_s_rec
.globl afficher
factorielle_s_rec:
   pushl  %ebp
   movl   %esp, %ebp
   pushl %ebx
   movl 4(%ebp), %ebx
   cmpl $0, %ebx
   je fac_base
   dec %ebx
   push %ebx
   call factorielle_s_rec
   add $8, %esp
   mov 4(%ebp), %ebx
   imul %ebx
   jmp Retour


fac_zero
	movl $1, %eax
  
   
# NE RIEN MODIFIER APRES CETTE LIGNE
Retour:
   pop %ebx
   leave
   ret

