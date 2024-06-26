---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.application import Application
from msgraph.generated.models.required_resource_access import RequiredResourceAccess
from msgraph.generated.models.resource_access import ResourceAccess

graph_client = GraphServiceClient(credentials, scopes)

request_body = Application(
	required_resource_access = [
		RequiredResourceAccess(
			resource_app_id = "00000002-0000-0000-c000-000000000000",
			resource_access = [
				ResourceAccess(
					id = UUID("311a71cc-e848-46a1-bdf8-97ff7156d8e6"),
					type = "Scope",
				),
				ResourceAccess(
					id = UUID("3afa6a7d-9b1a-42eb-948e-1650a849e176"),
					type = "Role",
				),
			],
		),
	],
)

result = await graph_client.applications.by_application_id('application-id').patch(request_body)


```