
'#frozen_string_literal: true is a magic comment, supported for the first time
in Ruby 2.3, that tells Ruby that all string literals in the file are
implicitly frozen, as if #freeze had been called on each of them. That is,
if a string literal is defined in a file with this comment, and you call
a method on that string which modifies it, such as <<, you'll get
RuntimeError: can't modify frozen String.

The comment must be on the first line of the file.