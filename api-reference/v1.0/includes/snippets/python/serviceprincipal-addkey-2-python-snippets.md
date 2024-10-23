---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.serviceprincipals.item.add_key.add_key_post_request_body import AddKeyPostRequestBody
from msgraph.generated.models.key_credential import KeyCredential
from msgraph.generated.models.password_credential import PasswordCredential
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AddKeyPostRequestBody(
	key_credential = KeyCredential(
		type = "X509CertAndPassword",
		usage = "Sign",
		key = base64.urlsafe_b64decode("MIIDYDCCAki..."),
	),
	password_credential = PasswordCredential(
		secret_text = "MKTr0w1...",
	),
	proof = "eyJ0eXAiOiJ...",
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').add_key.post(request_body)


```