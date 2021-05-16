# Generate building.md

"# Building projects",
"",
"<!-- Generated by tools/generate_building.jq; DO NOT EDIT. -->",
"",
"This is a list of executables that have building and running documented.",
"Build errors are included.",
"",
(
  [
    .[] | . as $p | .commands[]? |
    "- \($p.path)"
    + if .bin!=null then "/\(.bin)" else "" end
    + if .build!=null then " `\(.build//"")`" else "" end
    + if .build_errors!=null then ": ⚠️ \(.build_errors//"")" else "" end
  ] | sort[]
)