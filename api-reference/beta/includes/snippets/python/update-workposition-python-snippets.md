---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.work_position import WorkPosition
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = WorkPosition(
	is_current = True,
)

result = await graph_client.me.profile.positions.by_work_position_id('workPosition-id').patch(request_body)


```