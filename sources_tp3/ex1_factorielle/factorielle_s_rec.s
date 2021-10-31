.text
.globl factorielle_s_rec
.globl afficher



factorielle_s_rec:
   movl 4(%esp), %ebx
   pushl  %ebp
   movl   %esp, %ebp
   pushl %ebx
	call facto
	jmp Retour
facto:
  cmpl $0, %ebx 
  jnz fact1
  movl $1, %eax
  ret

fact1:
  pushl %ebx
  dec %ebx
  call facto
  popl %ebx
  imul %ebx
  ret 

# NE RIEN MODIFIER APRES CETTE LIGNE
Retour:
   pop %ebx
   leave
   ret

