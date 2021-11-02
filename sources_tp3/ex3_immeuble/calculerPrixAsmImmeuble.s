.data
.text
.globl    _ZN8Immeuble15calculerPrixAsmEi

_ZN8Immeuble15calculerPrixAsmEi:
    debutasm:
        push %ebp                             /* sauver le pointeur ebp */
        mov %esp, %ebp                       /* ebp recoit esp */

        # DEBUT COMPLETION
        movl 8(%ebp),%ebx # nb etage
        movl 12(%ebp),%ecx # superficie
        push %ecx
        push %ebx
        call _ZN8Batiment15calculerPrixAsmEi

        movl 12(%ebp),%ecx
        cas1:
            cmpl $5,16(%ebx) 
            jb cas2

            xchg %ecx,%eax
            mull 16(%ebx)
            addl %ecx,%eax

        cas2:
            cmpl $3,20(%ebx) 
            jb cas3
            movl 12(%ebp),%ecx
            xchg %ecx,%eax
            mull 20(%ebx)
            movl $2,%edi
            mull %edi
            addl %ecx,%eax

        cas3:
            cmpl $3,24(%ebx) 
            jb cas4
            movl 12(%ebp),%ecx
            xchg %ecx,%eax
            mull 24(%ebx)
            movl $3,%esi
            mull %esi
            addl %ecx,%eax
        cas4:
            cmpl $3,28(%ebx) 
            jb Fin
            movl 12(%ebp),%ecx
            xchg %ecx,%eax
            mull 28(%ebx)
            movl $4,%esi
            mull %esi
            addl %ecx,%eax





        # FIN COMPLETION

        # NE RIEN MODIFIER APRES CETTE LIGNE
    Fin:
        leave                               /* recuperer ebp et esp */
        ret
