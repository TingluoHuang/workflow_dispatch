FROM alpine:3

ENV GITHUB_TOKEN=""
ENV GITHUB_OWNER=""
ENV GITHUB_REPO=""
ENV GITHUB_WORKFLOW=""
ENV GITHUB_WORKFLOW_REF="master"
ENV GITHUB_WORKFLOW_INOUTS="{}"

RUN apk add --no-cache curl

COPY ./run_workflow.sh /run_workflow.sh
RUN chmod +x /run_workflow.sh

CMD ["/bin/bash", "-c", "/run_workflow.sh"]
