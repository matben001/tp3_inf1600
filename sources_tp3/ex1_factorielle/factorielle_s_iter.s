.text
.globl factorielle_s_iter
.globl afficher
factorielle_s_iter:
   movl 4(%esp), %eax
   pushl  %ebp
   movl   %esp, %ebp
   pushl %ebx
   movl %eax, %ecx
   dec %ecx
   jmp factorielle
base_zero:
	movl $1, %eax
	jmp Retour
factorielle:
	mull %ecx
	loop factorielle

cmpl $0, %eax
je base_zero
# NE RIEN MODIFIER APRES CETTE LIGNE
Retour:   
   pop %ebx
   leave
   ret

