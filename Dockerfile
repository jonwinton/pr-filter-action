FROM alpine:latest

LABEL "com.github.actions.name"="Pull Request Closed Filter"
LABEL "com.github.actions.description"="Filter for a closed pull request event"
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="blue-dark"

LABEL "repository"="https://github.com/clay/docusaurus-github-action"
LABEL "homepage"="https://github.com/clay/docusaurus-github-action"
LABEL "maintainer"="Jon Winton <@jonwinton>"

RUN	apk add --no-cache \
	bash \
	jq

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
