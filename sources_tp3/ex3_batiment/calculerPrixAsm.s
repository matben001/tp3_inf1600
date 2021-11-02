.data
.text
.globl    _ZN8Batiment15calculerPrixAsmEi
.globl    _ZN8Batiment21calculerSurfaceSolAsmEv

_ZN8Batiment15calculerPrixAsmEi:
    debut:
        push %ebp                             /* sauver le pointeur ebp */
        mov %esp, %ebp                       /* ebp recoit esp */

        # DEBUT COMPLETION
        subl $12,%esp
        movl 8(%ebp), %eax
        movl 8(%eax), %ebx
        push %eax
        call _ZN8Batiment21calculerSurfaceSolAsmEv
        mull  12(%ebp)
        cmpl $2,%ebx
        je Fin
        cmpl $1, %ebx
        movl $2, %ecx
        mull %ecx
        je Fin
        mull %ecx
        # FIN COMPLETION

        # NE RIEN MODIFIER APRES CETTE LIGNE
    Fin:
        leave                               /* recuperer ebp et esp */
        ret

