---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.network_access.filtering_profiles.by_filtering_profile_id('filteringProfile-id').policies.by_policy_link_id('policyLink-id').delete()


```