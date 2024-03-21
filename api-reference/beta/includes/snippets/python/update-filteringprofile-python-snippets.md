---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.filtering_profile import FilteringProfile

graph_client = GraphServiceClient(credentials, scopes)

request_body = FilteringProfile(
	state = Status.Disabled,
)

result = await graph_client.network_access.filtering_profiles.by_filtering_profile_id('filteringProfile-id').patch(request_body)


```