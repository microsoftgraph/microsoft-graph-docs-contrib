---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.security.collaboration.analyzedemails.microsoft_graph_security_remediate.remediate_post_request_body import RemediatePostRequestBody
from msgraph.generated.models.analyzed_email import AnalyzedEmail

graph_client = GraphServiceClient(credentials, scopes)

request_body = RemediatePostRequestBody(
	display_name = "Clean up Phish email",
	description = "Delete email",
	severity = RemediationSeverity.Medium,
	action = RemediationAction.SoftDelete,
	remediate_senders_copy = False,
	analyzed_emails = [
		AnalyzedEmail(
			network_message_id = "73ca4154-58d8-43d0-a890-08dc18c52e6d",
			recipient_email_address = "hannah.jarvis@contoso.com",
		),
		AnalyzedEmail(
			network_message_id = "73ca4154-58d8-43d0-a890-08dc18c52e6d",
			recipient_email_address = "preston.morales@contoso.com",
		),
	],
)

await graph_client.security.collaboration.analyzed_emails.microsoft_graph_security_remediate.post(request_body)


```