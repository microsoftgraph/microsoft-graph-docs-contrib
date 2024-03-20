---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.email_threat_submission_policy import EmailThreatSubmissionPolicy

graph_client = GraphServiceClient(credentials, scopes)

request_body = EmailThreatSubmissionPolicy(
	is_report_to_microsoft_enabled = False,
)

result = await graph_client.security.threat_submission.email_threat_submission_policies.by_email_threat_submission_policy_id('emailThreatSubmissionPolicy-id').patch(request_body)


```