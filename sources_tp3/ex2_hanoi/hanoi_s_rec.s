.data

.text
.globl hanoi_ASM_rec
.globl move
.globl afficher



# DEBUT COMPLETION
hanoi_ASM_rec:
         pushl  %ebp
         movl   %esp, %ebp
            pushl %ebx
        cmpl     $0, 8(%ebp)
        je      Retour
        movl 16(%ebp), %eax
        pushl %eax
         movl 20(%ebp), %ecx
        pushl    %ecx
        movl 12(%ebp), %edx
        pushl    %edx
        movl 8(%ebp), %eax
        subl $1, %eax
        pushl    %eax
        call    hanoi_ASM_rec
        addl     $16, %esp   
        movl   20(%ebp), %ecx
        pushl    %ecx
        movl   12(%ebp), %ebx
        pushl    %edx
        call    move
        addl $8, %esp
        movl   20(%ebp), %ecx
        pushl    %ecx
        movl   12(%ebp), %edx
        pushl    %edx
        movl   16(%ebp), %eax
        pushl    %eax
        movl 8(%ebp), %ecx 
        subl   $1,  %ecx
       pushl    %ecx
        call    hanoi_ASM_rec
        addl     $16, %esp 
# FIN COMPLETION   

# NE RIEN MODIFIER APRES CETTE LIGNE
Retour:
   pop  %ebx
   leave
   ret

