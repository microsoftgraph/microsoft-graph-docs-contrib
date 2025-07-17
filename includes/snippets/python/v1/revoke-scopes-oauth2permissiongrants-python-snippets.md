---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.o_auth2_permission_grant import OAuth2PermissionGrant
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OAuth2PermissionGrant(
	scope = "User.Read.All",
)

result = await graph_client.oauth2_permission_grants.by_o_auth2_permission_grant_id('oAuth2PermissionGrant-id').patch(request_body)


```