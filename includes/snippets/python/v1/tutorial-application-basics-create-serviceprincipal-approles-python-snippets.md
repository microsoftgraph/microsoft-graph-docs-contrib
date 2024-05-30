---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.application import Application
from msgraph.generated.models.app_role import AppRole

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