---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.health_issue import HealthIssue
from msgraph_beta.generated.models.health_issue_status import HealthIssueStatus

graph_client = GraphServiceClient(credentials, scopes)

request_body = HealthIssue(
	status = HealthIssueStatus.Closed,
)

result = await graph_client.security.identities.health_issues.by_health_issue_id('healthIssue-id').patch(request_body)


```