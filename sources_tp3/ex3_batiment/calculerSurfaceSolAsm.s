.data
.text
.globl	_ZN8Batiment21calculerSurfaceSolAsmEv

_ZN8Batiment21calculerSurfaceSolAsmEv:
        push %ebp                             /* sauver le pointeur ebp */
        mov %esp, %ebp                       /* ebp recoit esp */
        
        movl 4(%ebp), %eax
        movl 8(%ebp), %ecx
        mull %ecx
        # DEBUT COMPLETION
        # FIN COMPLETION
        
        # NE RIEN MODIFIER APRES CETTE LIGNE
        leave                               /* recuperer ebp et esp */
        ret          
