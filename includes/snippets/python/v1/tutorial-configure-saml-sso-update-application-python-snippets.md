---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.application import Application
from msgraph.generated.models.web_application import WebApplication
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Application(
	identifier_uris = [
		"https://signin.aws.amazon.com/saml",
	],
	web = WebApplication(
		redirect_uris = [
			"https://signin.aws.amazon.com/saml",
		],
	),
)

result = await graph_client.applications.by_application_id('application-id').patch(request_body)


```