.data
.text
.globl    _ZN8Batiment21calculerSurfaceSolAsmEv

_ZN8Batiment21calculerSurfaceSolAsmEv:
        push %ebp                             /* sauver le pointeur ebp */
        mov %esp, %ebp                       /* ebp recoit esp */

        # DEBUT COMPLETION
        movl 8(%ebp), %ebx
        movl 4(%ebx),%eax
        movl (%ebx),%ecx
        movl $0, %edx
        mull %ecx

        # FIN COMPLETION

        # NE RIEN MODIFIER APRES CETTE LIGNE
        leave                               /* recuperer ebp et esp */
        ret
