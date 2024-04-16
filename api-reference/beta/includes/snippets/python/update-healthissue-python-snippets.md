---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.health_issue import HealthIssue

graph_client = GraphServiceClient(credentials, scopes)

request_body = HealthIssue(
	status = HealthIssueStatus.Closed,
)

result = await graph_client.security.identities.health_issues.by_health_issue_id('healthIssue-id').patch(request_body)


```