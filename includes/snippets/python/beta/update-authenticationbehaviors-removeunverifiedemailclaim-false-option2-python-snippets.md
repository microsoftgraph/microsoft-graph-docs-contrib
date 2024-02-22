---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.application import Application
from msgraph.generated.models.authentication_behaviors import AuthenticationBehaviors

graph_client = GraphServiceClient(credentials, scopes)

request_body = Application(
	authentication_behaviors = AuthenticationBehaviors(
		remove_unverified_email_claim = False,
	),
)

result = await graph_client.applications.by_application_id('application-id').patch(request_body)


```