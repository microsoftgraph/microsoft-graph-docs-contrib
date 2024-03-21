---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.application import Application
from msgraph.generated.models.web_application import WebApplication

graph_client = GraphServiceClient(credentials, scopes)

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