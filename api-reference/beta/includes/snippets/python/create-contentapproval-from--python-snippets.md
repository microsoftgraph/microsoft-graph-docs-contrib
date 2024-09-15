---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.windows_updates.content_approval import ContentApproval
from msgraph_beta.generated.models.windows_updates.catalog_content import CatalogContent
from msgraph_beta.generated.models.windows_updates.feature_update_catalog_entry import FeatureUpdateCatalogEntry
from msgraph_beta.generated.models.windows_updates.deployment_settings import DeploymentSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ContentApproval(
	odata_type = "#microsoft.graph.windowsUpdates.contentApproval",
	content = CatalogContent(
		odata_type = "#microsoft.graph.windowsUpdates.catalogContent",
		catalog_entry = FeatureUpdateCatalogEntry(
			odata_type = "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry",
			id = "6b7e60db-a8e4-426a-9aed-bd12b5c0b9d4",
		),
	),
	deployment_settings = DeploymentSettings(
	),
	additional_data = {
			"schedule" : {
					"start_date_time" : "String (timestamp)",
					"gradual_rollout" : {
							"@odata_type" : "#microsoft.graph.windowsUpdates.dateDrivenRolloutSettings",
							"end_date_time" : "String (timestamp)",
					},
			},
	}
)

result = await graph_client.admin.windows.updates.update_policies.by_update_policy_id('updatePolicy-id').compliance_changes.post(request_body)


```