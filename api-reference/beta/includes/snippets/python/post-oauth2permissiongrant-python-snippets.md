---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.o_auth2_permission_grant import OAuth2PermissionGrant
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OAuth2PermissionGrant(
	client_id = "ef969797-201d-4f6b-960c-e9ed5f31dab5",
	consent_type = "AllPrincipals",
	resource_id = "943603e4-e787-4fe9-93d1-e30f749aae39",
	scope = "DelegatedPermissionGrant.ReadWrite.All",
	start_time = "2022-03-17T00:00:00Z",
	expiry_time = "2023-03-17T00:00:00Z",
)

result = await graph_client.oauth2_permission_grants.post(request_body)


```