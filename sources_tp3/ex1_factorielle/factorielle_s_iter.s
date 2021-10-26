.text
.globl factorielle_s_iter
.globl afficher
factorielle_s_iter:
   pushl  %ebp
   movl   %esp, %ebp
   pushl %ebx
   movl 8(%esp), %eax
   movl 8(%esp), %ecx
 
factorielle:
	mull %ecx
	loop factorielle

# NE RIEN MODIFIER APRES CETTE LIGNE
Retour:   
   pop %ebx
   leave
   ret

