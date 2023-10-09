---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ClearUserPreferredPresencePostRequestBody(
)

await graph_client.users.by_user_id('user-id').presence.clear_user_preferred_presence.post(body = request_body)


```