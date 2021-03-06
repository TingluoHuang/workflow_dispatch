FROM alpine:3

ENV GITHUB_TOKEN=""
ENV GITHUB_OWNER=""
ENV GITHUB_REPO=""
ENV GITHUB_WORKFLOW=""
ENV GITHUB_WORKFLOW_REF="master"
ENV GITHUB_WORKFLOW_INPUTS="{}"

RUN apk add --no-cache curl

COPY ./run_workflow.sh /run_workflow.sh
RUN chmod +x /run_workflow.sh

CMD ["/bin/sh", "-c", "/run_workflow.sh"]
