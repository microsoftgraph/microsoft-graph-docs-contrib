---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.o_auth2_permission_grant import OAuth2PermissionGrant
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OAuth2PermissionGrant(
	client_id = "b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94",
	consent_type = "Principal",
	resource_id = "7ea9e944-71ce-443d-811c-71e8047b557a",
	principal_id = "3fbd929d-8c56-4462-851e-0eb9a7b3a2a5",
	scope = "User.Read.All Group.Read.All",
)

result = await graph_client.oauth2_permission_grants.post(request_body)


```