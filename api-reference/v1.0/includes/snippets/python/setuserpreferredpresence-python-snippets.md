---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = SetUserPreferredPresencePostRequestBody(
	availability = "DoNotDisturb",
	activity = "DoNotDisturb",
	expiration_duration = "PT8H",
)

await graph_client.users.by_user_id('user-id').presence.set_user_preferred_presence.post(request_body)


```