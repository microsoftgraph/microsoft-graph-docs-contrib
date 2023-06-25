---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EmailThreatSubmissionPolicy()
request_body.is_report_to_microsoft_enabled = True




result = await client.security.threat_submission.email_threat_submission_policies.post(request_body = request_body)


```