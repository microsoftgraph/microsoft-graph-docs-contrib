---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.on_premises_sync_behavior import OnPremisesSyncBehavior
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OnPremisesSyncBehavior(
	odata_type = "#microsoft.graph.onPremisesSyncBehavior",
	is_cloud_managed = True,
)

result = await graph_client.groups.by_group_id('group-id').on_premises_sync_behavior.patch(request_body)


```