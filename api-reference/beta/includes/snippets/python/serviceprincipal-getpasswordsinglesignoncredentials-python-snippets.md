---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.serviceprincipals.item.get_password_single_sign_on_credentials.get_password_single_sign_on_credentials_post_request_body import GetPasswordSingleSignOnCredentialsPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GetPasswordSingleSignOnCredentialsPostRequestBody(
	id = "5793aa3b-cca9-4794-679a240f8b58",
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').get_password_single_sign_on_credentials.post(request_body)


```