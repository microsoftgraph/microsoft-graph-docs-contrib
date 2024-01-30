---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.users.by_user_id('user-id').authentication.sign_in_preferences.get()


```