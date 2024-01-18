---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = Application(
	authentication_behaviors = AuthenticationBehaviors(
		remove_unverified_email_claim = None,
	),
)

result = await graph_client.applications.by_application_id('application-id').patch(request_body)


```