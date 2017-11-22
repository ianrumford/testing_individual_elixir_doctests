#!/bin/bash
while inotifywait -e close_write ./test/lib/fake_module.ex; do  mix docs; mix test ./test/fake_doctest; done
