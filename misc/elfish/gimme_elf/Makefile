ELF=../../elf/elf_h
#ELF=./elfg5
ELFDIR=../../elf/elf_h_src
ELFBLUEDIR=../elfparse
SRCP6=../../../src/perl6
ELFBLUEDEV=-I ${ELFDIR} -I ${ELFBLUEDIR} -e 'use Elf_wo_main' ${ELFBLUEDIR}/IRx1_FromAST2.pm -e '$$*ast2ir_0=$$*ast2ir_1; $$*parser0=undef' ParserGimme5.pm
ELFG5COMP=${ELFBLUEDEV} -e elf_main

elfg5:: ParseWithGimme5.pm STD.pmc
	${ELF} -x -o ./elfg5 ${ELFG5COMP}

ParseWithGimme5.pm: STD.pmc
	./ParserGimme5_create.pl

STD.pmc:
	(cd ${SRCP6}; svn up -r25030; make distclean; make fast)
	cp ${SRCP6}/STD.pmc .
	cp ${SRCP6}/Cursor.pmc .
	cp ${SRCP6}/mangle.pl .
	cp ${SRCP6}/LazyMap.pm .
	cp ${ELFBLUEDIR}/STD_blue_run .

clean:
	rm -f ParserGimme5.pm STD.pmc
	rm -f elfg5 #XXX

test:
	# old compiler, new code
	${ELF} -x -o ./elf_tmp0 ${ELFG5COMP}
	chmod +x ./elf_tmp0
	# hybrid compiler
	./elf_tmp0 -x -o ./elf_tmp1 ${ELFG5COMP}
	chmod +x ./elf_tmp1
	# new compiler
	./elf_tmp1 -x -o ./elf_tmp2 ${ELFG5COMP}
	chmod +x ./elf_tmp2
	# compiled itself?
	diff ./elf_tmp1 ./elf_tmp2
	# ok :)
