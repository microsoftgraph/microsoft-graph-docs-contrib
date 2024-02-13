---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.change_screen_sharing_role_post_request_body import ChangeScreenSharingRolePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = ChangeScreenSharingRolePostRequestBody(
	role = ScreenSharingRole.Viewer,
)

await graph_client.communications.calls.by_call_id('call-id').change_screen_sharing_role.post(request_body)


```