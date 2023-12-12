---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = SetUserPreferredPresencePostRequestBody(
	availability = "DoNotDisturb",
	activity = "DoNotDisturb",
	expiration_duration = "PT8H",
)

await graph_client.users.by_user_id('user-id').presence.set_user_preferred_presence.post(request_body)


```