echo $GITHUB_OWNER
echo $GITHUB_REPO
echo $GITHUB_WORKFLOW
echo $GITHUB_WORKFLOW_INPUTS

curl \
  -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  -H "Authorization: token $GITHUB_TOKEN" \
  $GITHUB_EXTRA_CURL_ARG \
  https://api.github.com/repos/$GITHUB_OWNER/$GITHUB_REPO/actions/workflows/$GITHUB_WORKFLOW/dispatches \
  -d "{\"ref\":\"$GITHUB_WORKFLOW_REF\", \"inputs\": \"$GITHUB_WORKFLOW_INPUTS\"}"
