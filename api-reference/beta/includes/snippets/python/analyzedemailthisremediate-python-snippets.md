---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.collaboration.analyzedemails.microsoft_graph_security_remediate.remediate_post_request_body import RemediatePostRequestBody
from msgraph_beta.generated.models.remediation_severity import RemediationSeverity
from msgraph_beta.generated.models.remediation_action import RemediationAction
from msgraph_beta.generated.models.security.analyzed_email import AnalyzedEmail
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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