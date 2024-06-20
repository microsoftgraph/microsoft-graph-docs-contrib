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
		"api://32977d3b-ee0e-4614-9f50-f583a07842d2",
	],
	web = WebApplication(
		redirect_uris = [
			"https://contosoiwaapp-contoso.msappproxy.net",
		],
		home_page_url = "https://contosoiwaapp-contoso.msappproxy.net",
	),
)

result = await graph_client.applications.by_application_id('application-id').patch(request_body)


```