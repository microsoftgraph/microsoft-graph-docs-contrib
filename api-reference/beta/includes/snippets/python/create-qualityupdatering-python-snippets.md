---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.windows_updates.quality_update_ring import QualityUpdateRing
from msgraph_beta.generated.models.windows_updates.included_group_assignment import IncludedGroupAssignment
from msgraph_beta.generated.models.windows_updates.excluded_group_assignment import ExcludedGroupAssignment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = QualityUpdateRing(
	odata_type = "#microsoft.graph.windowsUpdates.qualityUpdateRing",
	display_name = "Ring0 - IT devices",
	description = "First deployment ring to test updates before going to prod.",
	included_group_assignment = IncludedGroupAssignment(
		odata_type = "microsoft.graph.windowsUpdates.includedGroupAssignment",
	),
	excluded_group_assignment = ExcludedGroupAssignment(
		odata_type = "microsoft.graph.windowsUpdates.excludedGroupAssignment",
	),
	deferral_in_days = 5,
	is_paused = False,
)

result = await graph_client.admin.windows.updates.policies.by_policy_id('policy-id').rings.post(request_body)


```