# Generate assembly.md

"# Whitespace assembly mnemonics",
"",
"<!-- Generated by tools/generate_assembly.jq; DO NOT EDIT. -->",
"",
"These are the mnemonics used by known Whitespace assembly dialects for",
"instructions, ranked by popularity.",
"",
(["push", "dup", "copy", "swap", "drop", "slide",
  "add", "sub", "mul", "div", "mod", "store", "retrieve",
  "label", "call", "jmp", "jz", "jn", "ret", "end",
  "printc", "printi", "readc", "readi",
  "shuffle", "dumpstack", "dumpheap", "dumptrace" | {key:., value:[]}]
  | from_entries) as $keys |
(
  reduce (.[].assembly.mnemonics | select(. != null) | to_entries[]) as $inst
         ($keys; .[$inst.key] += $inst.value)
  | to_entries[].value
  | map(ascii_downcase
      | gsub("^(ws_)?(?<inst>[a-z_]+)\\(.*\\);$"; .inst)
      | gsub("^(stack|arith|math|heap|flow|io)[ \\.]"; "")
      | gsub("^mod\\."; "")
      | gsub(" ([.%lf]?<[a-z_]+>|_)"; ""))
  | group_by(.) | sort_by(-length)
  | map("`\(.[0])`" + if length != 1 then " (\(length | tostring))" else "" end)
  | "- " + join(", ")
),
(
  [
    .[]
    | select(.tags | contains(["assembler"]) or contains(["disassembler"]))
    | select(.assembly.mnemonics == null)
    | "- " + (.path // "“\(.name)” by " + (.authors|join(", ")))
  ]
  | sort
  | if length == 0 then empty
    else "", "## Need documentation", "", .[] end
)
