---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.email_url_threat_submission import EmailUrlThreatSubmission
from msgraph_beta.generated.models.submission_category import SubmissionCategory
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EmailUrlThreatSubmission(
	odata_type = "#microsoft.graph.security.emailUrlThreatSubmission",
	category = SubmissionCategory.Spam,
	recipient_email_address = "tifc@contoso.com",
	message_url = "https://graph.microsoft.com/beta/users/c52ce8db-3e4b-4181-93c4-7d6b6bffaf60/messages/AAMkADU3MWUxOTU0LWNlOTEt=",
)

result = await graph_client.security.threat_submission.email_threats.post(request_body)


```