---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.add_password_post_request_body import AddPasswordPostRequestBody
from msgraph.generated.models.password_credential import PasswordCredential

graph_client = GraphServiceClient(credentials, scopes)

request_body = AddPasswordPostRequestBody(
	password_credential = PasswordCredential(
		display_name = "Password friendly name",
	),
)

result = await graph_client.applications.by_application_id('application-id').add_password.post(request_body)


```