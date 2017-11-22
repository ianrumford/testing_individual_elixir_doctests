#!/bin/bash
while inotifywait -e close_write ./lib/real_module.ex; do  mix docs; mix test ./test/real_doctest_test.exs; done
