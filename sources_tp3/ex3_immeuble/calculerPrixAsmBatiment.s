.data
.text
.globl    _ZN8Batiment15calculerPrixAsmEi

_ZN8Batiment15calculerPrixAsmEi:
        push %ebp                            /* sauver le pointeur ebp */
        mov %esp, %ebp                       /* ebp recoit esp */

        # DEBUT COMPLETION
        movl 8(%ebp),%eax
        movl 12(%eax),%edi
        push %eax
        call _ZN8Batiment21calculerSurfaceSolAsmEv
        mull  12(%ebp)
        movl $0, %ebx
        cmpl $2,%edi
        je Fin
        movl $2,%ecx
        mull %ecx
        cmpl $1,%edi
        je Fin
        mull %ecx

        # FIN COMPLETION

        # NE RIEN MODIFIER APRES CETTE LIGNE
    Fin:
        leave                               /* recuperer ebp et esp */
        ret

