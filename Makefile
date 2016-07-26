.PHONY: feature
NAME := ""

feature:
	[ $(NAME) != "" ] && \
		source .docker_aliases.sh && \
		git_flow feature start $(NAME) && \
		mkdir $(NAME) && \
		touch "$(NAME)/Dockerfile" && \
		touch "$(NAME)/README.md" && \
		git add . && \
		git commit -m "Initial skeleton for feature $(NAME)" || \
		echo "NAME not set"