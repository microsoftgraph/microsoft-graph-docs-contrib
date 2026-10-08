---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.windows_updates.quality_update_policy import QualityUpdatePolicy
from msgraph_beta.generated.models.windows_updates.approval_rule import ApprovalRule
from msgraph_beta.generated.models.windows_updates.quality_update_approval_rule import QualityUpdateApprovalRule
from msgraph_beta.generated.models.quality_update_classification import QualityUpdateClassification
from msgraph_beta.generated.models.quality_update_cadence import QualityUpdateCadence
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = QualityUpdatePolicy(
	odata_type = "#microsoft.graph.windowsUpdates.qualityUpdatePolicy",
	display_name = "Patch Tuesday 123",
	description = "Testing Patch Tuesday in test environment",
	approval_rules = [
		QualityUpdateApprovalRule(
			odata_type = "microsoft.graph.windowsUpdates.qualityUpdateApprovalRule",
			deferral_in_days = 0,
			classification = QualityUpdateClassification.NonSecurity,
			cadence = QualityUpdateCadence.OutOfBand,
		),
	],
)

result = await graph_client.admin.windows.updates.policies.post(request_body)


```