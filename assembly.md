# Whitespace assembly mnemonics

<!-- Generated by tools/generate_assembly.jq; DO NOT EDIT. -->

These are the mnemonics used by known Whitespace assembly dialects for
instructions, ranked by popularity.

- `push` (51), `psh` (2), `<number>`
- `dup` (38), `copy` (4), `duplicate` (4), `sdupli` (3), `dupe` (2), `dupl` (2), `doub`
- `copy` (31), `scopy` (3), `copynth` (2), `ref` (2), `copy_n`, `copyn`, `dup2`, `pick`, `pull`, `take`
- `swap` (46), `sswap` (3), `swp` (3), `exchange`, `swa`, `swicth`, `xchg`
- `discard` (20), `pop` (18), `drop` (10), `sdiscard` (3), `disc` (2), `away`, `del`, `dsc`
- `slide` (32), `sslide` (3), `away`, `remove`, `skip`, `slde`, `slideoff`
- `add` (49), `plus` (2), `+`, `addition`
- `sub` (47), `minus` (2), `subtract` (2), `-`, `substraction`
- `mul` (43), `mult` (4), `multiply` (2), `times` (2), `*`, `multiplication`
- `div` (47), `divide` (3), `/`, `division`
- `mod` (47), `modulo` (4), `%`, `rem`
- `store` (45), `set` (3), `sto` (2), `stor` (2), `put`
- `retrieve` (34), `get` (5), `load` (5), `retr` (3), `fetch`, `lod`, `rcl`, `read`, `ret`, `retreive`, `retri`, `retrive`, `retrv`
- `label` (25), `mark` (13), `<label>:` (9), `<number>:` (2), `label_<number>:` (2), `lbl` (2), `%<number>:`, `@<label>`, `l<number>:`, `labl`, `mrk`, `part`, `register`, `setlabel`
- `call` (47), `gosub` (2), `call_subroutine`, `callsub`, `cll`, `jsr`, `sub`
- `jump` (32), `jmp` (19), `goto` (3), `b`, `j`, `jp`
- `jz` (23), `jumpz` (7), `jez` (3), `jump-zero` (3), `jumpzero` (3), `jmpz` (2), `bz`, `bzero`, `equal`, `gotoiz`, `iz_jump`, `jeof`, `jeq`, `jmp_if0`, `jnil`, `jpz`, `jumpnull`, `jze`, `jzer`, `jzero`, `zero`
- `jn` (18), `jumpn` (6), `jneg` (5), `jlz` (4), `jump-neg` (3), `jumpneg` (2), `less` (2), `bltz`, `bneg`, `gotoin`, `in_jump`, `jlt`, `jltz`, `jmp_neg`, `jmpn`, `jmpneg`, `jne`, `jpn`, `js`, `jumpde`, `jumplz`, `jumpnegative`
- `ret` (28), `return` (17), `ends` (2), `endsub` (2), `back`, `end_sub`, `endfunc`, `endofsubroutine`
- `end` (27), `exit` (17), `halt` (3), `endp` (2), `endprog` (2), `quit` (2), `endle`, `endofprogram`, `finish`
- `outchar` (9), `printc` (8), `putc` (5), `outc` (4), `putchar` (4), `out-char` (3), `ochr` (2), `out` (2), `pchr` (2), `printchar` (2), `cout`, `ochar`, `otc`, `output`, `outputc`, `outputchar`, `outputcharacter`, `pc`, `pchar`, `print_c`, `print_char`, `write_char`, `writec`, `writechar`, `wtc`
- `outnum` (8), `printi` (7), `putn` (5), `out-num` (3), `outn` (3), `pnum` (3), `putnum` (3), `onum` (2), `outputnum` (2), `iout`, `nout`, `oint`, `otn`, `out_n`, `outi`, `outnumber`, `outputn`, `outputnumber`, `pn`, `print_i`, `print_number`, `printn`, `printnum`, `printnumber`, `putint`, `write_num`, `writeint`, `writen`, `wtn`
- `readchar` (14), `readc` (10), `getc` (6), `getchar` (3), `ichr` (3), `in-char` (3), `in` (2), `inc` (2), `rdc` (2), `read_char` (2), `cin`, `ichar`, `inchar`, `inpc`, `rc`, `rchar`, `rchr`, `read_c`
- `readnum` (11), `readi` (7), `getn` (6), `readn` (4), `in-num` (3), `inum` (3), `getnum` (2), `rdn` (2), `readnumber` (2), `rnum` (2), `getint`, `iin`, `iint`, `in_n`, `ini`, `inn`, `innum`, `inpn`, `nin`, `read_i`, `read_num`, `read_number`, `readint`, `rn`
- `shuffle`
- `debug_printstack` (2), `dumpstack`
- `debug_printheap` (2), `dumpheap`
- `trace`

## Need documentation

- go/yshr-wspacego
- haskell/burghard-wsa
- haskell/helvm-helpa
- haskell/helvm-wsa
- java/vyo-kairos
- javascript/wdalmut
- kotlin/ze-space
- scala/dashlambda-eso
