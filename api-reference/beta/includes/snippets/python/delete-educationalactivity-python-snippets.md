---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.me.profile.educational_activities.by_educational_activity_id('educationalActivity-id').delete()


```