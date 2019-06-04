rufs: *.go */*.go Makefile
	go build -o $@

rufs-master-bolt: *.go */*.go Makefile
	go build -tags bolt -o $@

rufs_windows_386.exe: rufs
	gox -osarch=windows/386

rufs_windows_amd64.exe: rufs
	gox -osarch=windows/amd64

gofmt:
	for i in *.go */*.go; do gofmt -w -d $$i; done

fmt: | gofmt rufs

.PHONY: gofmt
