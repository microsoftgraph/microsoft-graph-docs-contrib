---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Application(
	identifier_uris = [
		"https://contosoiwaapp-contoso.msappproxy.net",
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