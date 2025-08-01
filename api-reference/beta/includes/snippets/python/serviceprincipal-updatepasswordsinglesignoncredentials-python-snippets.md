---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.serviceprincipals.item.update_password_single_sign_on_credentials.update_password_single_sign_on_credentials_post_request_body import UpdatePasswordSingleSignOnCredentialsPostRequestBody
from msgraph_beta.generated.models.credential import Credential
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UpdatePasswordSingleSignOnCredentialsPostRequestBody(
	id = "5793aa3b-cca9-4794-679a240f8b58",
	credentials = [
		Credential(
			field_id = "param_username",
			value = "myusername",
			type = "username",
		),
		Credential(
			field_id = "param_password",
			value = "pa$$w0rd",
			type = "password",
		),
	],
)

await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').update_password_single_sign_on_credentials.post(request_body)


```