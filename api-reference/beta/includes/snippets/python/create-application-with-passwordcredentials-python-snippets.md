---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.application import Application
from msgraph_beta.generated.models.password_credential import PasswordCredential

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