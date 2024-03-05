---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.network_access.forwarding_profiles.by_forwarding_profile_id('forwardingProfile-id').policies.by_policy_link_id('policyLink-id').get()


```