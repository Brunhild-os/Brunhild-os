((string_literal) @markdown
 (#match? @markdown "^\"\"\"")
 (#offset! @markdown 0 3 0 -3))

[
  (line_comment)
  (block_comment)
] @comment

((prefixed_string_literal
   prefix: (identifier) @_prefix) @regex
 (#eq? @_prefix "r")
 (#offset! @regex 0 2 0 -1))