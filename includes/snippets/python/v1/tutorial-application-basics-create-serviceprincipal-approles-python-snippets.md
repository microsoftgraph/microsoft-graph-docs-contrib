---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Application(
	app_roles = [
		AppRole(
			allowed_member_types = [
				"User",
				"Application",
			],
			description = "Survey.Read",
			display_name = "Survey.Read",
			id = UUID("7a9ddfc4-cc8a-48ea-8275-8ecbffffd5a0"),
			is_enabled = False,
			origin = "Application",
			value = "Survey.Read",
		),
	],
)

result = await graph_client.applications.by_application_id('application-id').patch(request_body)


```