.text
.globl factorielle_s_iter
.globl afficher
factorielle_s_iter:
   
   pushl  %ebp
   movl   %esp, %ebp
   pushl %ebx
   
# DEBUT COMPLETION
   movl 12(%esp), %eax
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
# FIN COMPLETION

# NE RIEN MODIFIER APRES CETTE LIGNE
Retour:   
   pop %ebx
   leave
   ret

