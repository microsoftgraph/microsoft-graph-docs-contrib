---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = Application(
	web = WebApplication(
		redirect_uris = [
			"https://signin.aws.amazon.com/saml",
		],
	),
	identifier_uris = [
		"https://signin.aws.amazon.com/saml",
	],
)

result = await graph_client.applications.by_application_id('application-id').patch(request_body)


```