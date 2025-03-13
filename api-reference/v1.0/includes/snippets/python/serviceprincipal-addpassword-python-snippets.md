---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.serviceprincipals.item.add_password.add_password_post_request_body import AddPasswordPostRequestBody
from msgraph.generated.models.password_credential import PasswordCredential
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AddPasswordPostRequestBody(
	password_credential = PasswordCredential(
		display_name = "Password friendly name",
	),
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').add_password.post(request_body)


```