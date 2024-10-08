ALL != ls *.md | awk '{printf "%s.html ", substr($$0, 1, length($$0)-3);}'

defalt: $(ALL)

%.html: %.md
	pandoc -f gfm+raw_html+pipe_tables "$<" -o "$@"

info:
	@echo make $(ALL)




