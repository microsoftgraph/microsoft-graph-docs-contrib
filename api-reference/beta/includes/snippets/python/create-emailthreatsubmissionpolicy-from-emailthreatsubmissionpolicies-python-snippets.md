---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.email_threat_submission_policy import EmailThreatSubmissionPolicy

graph_client = GraphServiceClient(credentials, scopes)

request_body = EmailThreatSubmissionPolicy(
	is_report_to_microsoft_enabled = True,
)

result = await graph_client.security.threat_submission.email_threat_submission_policies.post(request_body)


```