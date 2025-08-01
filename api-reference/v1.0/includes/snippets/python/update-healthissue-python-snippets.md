---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.security.health_issue import HealthIssue
from msgraph.generated.models.health_issue_status import HealthIssueStatus
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = HealthIssue(
	status = HealthIssueStatus.Closed,
)

result = await graph_client.security.identities.health_issues.by_health_issue_id('healthIssue-id').patch(request_body)


```