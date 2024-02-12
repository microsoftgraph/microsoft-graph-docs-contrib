---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.o_auth2_permission_grant import OAuth2PermissionGrant

graph_client = GraphServiceClient(credentials, scopes)

request_body = OAuth2PermissionGrant(
	scope = "User.Read.All",
)

result = await graph_client.oauth2_permission_grants.by_o_auth2_permission_grant_id('oAuth2PermissionGrant-id').patch(request_body)


```