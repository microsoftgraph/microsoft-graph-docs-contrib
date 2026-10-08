---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.windows_updates.quality_update_ring import QualityUpdateRing
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = QualityUpdateRing(
	odata_type = "#microsoft.graph.windowsUpdates.qualityUpdateRing",
	display_name = "Test Policy 123",
	description = "Pre-production test policy",
	deferral_in_days = 5,
	is_paused = True,
	is_hotpatch_enabled = True,
)

result = await graph_client.admin.windows.updates.policies.by_policy_id('policy-id').rings.by_ring_id('ring-id').patch(request_body)


```