---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.directory.pending_external_user_profiles.by_pending_external_user_profile_id('pendingExternalUserProfile-id').get()


```