---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.security.secure_score_control_profiles.by_secure_score_control_profile_id('secureScoreControlProfile-id').get()


```