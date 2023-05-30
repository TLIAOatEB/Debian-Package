prefix = /usr/local

build: out/dp

out/dp: src/dp.c
	mkdir -p out
	cc src/dp.c -L. -lbd -o out/dp

test: out/dp
	out/dp

clean:
	-rm -fr out

install: out/dp
	install -D out/dp \
		$(DESTDIR)$(prefix)/bin/dp

uninstall:
	-rm -f $(DESTDIR)$(prefix)/bin/dp
