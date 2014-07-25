.PHONY: all build test tag_latest release ssh

all: build

build_baseimage:
	docker build -t lanciv/baseimage:0.1.0 images/base
	docker build -t $(NAME):$(VERSION) --rm image

build_golang_base:
	docker build -t lanciv/golang-base:1.3 images/golang
tag_latest:
	docker tag $(NAME):$(VERSION) $(NAME):latest

release: tag_latest
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F $(VERSION); then echo "$(NAME) version $(VERSION) is not yet built. Please run 'make build'"; false; fi
	@if ! head -n 1 Changelog.md | grep -q 'release date'; then echo 'Please note the release date in Changelog.md.' && false; fi
	docker push $(NAME)
	@echo "*** Don't forget to create a tag. git tag rel-$(VERSION) && git push origin rel-$(VERSION)"
