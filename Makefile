up-go.sh:
	@rm -rf $(GO_SH)
	@make get-go.sh

.PHONY: deps
deps: get-go.sh
	@$(GO_SH)/make.sh deps

up: get-go.sh cc
	@$(GO_SH)/make.sh up

cc: get-go.sh
	@$(GO_SH)/make.sh cc