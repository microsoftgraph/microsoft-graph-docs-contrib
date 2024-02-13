---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.delete_password_single_sign_on_credentials_post_request_body import DeletePasswordSingleSignOnCredentialsPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeletePasswordSingleSignOnCredentialsPostRequestBody(
	id = "5793aa3b-cca9-4794-679a240f8b58",
)

await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').delete_password_single_sign_on_credentials.post(request_body)


```