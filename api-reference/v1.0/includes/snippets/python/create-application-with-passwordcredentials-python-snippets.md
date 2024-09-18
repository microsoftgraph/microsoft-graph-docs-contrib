---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.application import Application
from msgraph.generated.models.password_credential import PasswordCredential

graph_client = GraphServiceClient(credentials, scopes)

request_body = Application(
	display_name = "MyAppName",
	password_credentials = [
		PasswordCredential(
			display_name = "Password name",
		),
	],
)

result = await graph_client.applications.post(request_body)


```