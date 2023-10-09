---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = EmailThreatSubmissionPolicy(
	is_report_to_microsoft_enabled = False,
)

result = await graph_client.security.threat_submission.email_threat_submission_policies.by_email_threat_submission_policie_id('emailThreatSubmissionPolicy-id').patch(body = request_body)


```