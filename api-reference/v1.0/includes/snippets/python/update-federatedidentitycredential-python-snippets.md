---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.federated_identity_credential import FederatedIdentityCredential
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = FederatedIdentityCredential(
	name = "testing02",
	issuer = "https://login.microsoftonline.com/3d1e2be9-a10a-4a0c-8380-7ce190f98ed9/v2.0",
	subject = "a7d388c3-5e3f-4959-ac7d-786b3383006a",
	description = "Updated description",
	audiences = [
		"api://AzureADTokenExchange",
	],
)

result = await graph_client.applications.by_application_id('application-id').federated_identity_credentials.by_federated_identity_credential_id('federatedIdentityCredential-id').patch(request_body)


```