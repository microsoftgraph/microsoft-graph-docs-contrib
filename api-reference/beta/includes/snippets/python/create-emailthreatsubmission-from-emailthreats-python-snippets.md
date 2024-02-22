---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.email_url_threat_submission import EmailUrlThreatSubmission

graph_client = GraphServiceClient(credentials, scopes)

request_body = EmailUrlThreatSubmission(
	odata_type = "#microsoft.graph.security.emailUrlThreatSubmission",
	category = SubmissionCategory.Spam,
	recipient_email_address = "tifc@contoso.com",
	message_url = "https://graph.microsoft.com/beta/users/c52ce8db-3e4b-4181-93c4-7d6b6bffaf60/messages/AAMkADU3MWUxOTU0LWNlOTEt=",
)

result = await graph_client.security.threat_submission.email_threats.post(request_body)


```