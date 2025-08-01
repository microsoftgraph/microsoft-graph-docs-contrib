---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.windows_updates.update_policy import UpdatePolicy
from msgraph_beta.generated.models.windows_updates.deployment_audience import DeploymentAudience
from msgraph_beta.generated.models.windows_updates.compliance_change import ComplianceChange
from msgraph_beta.generated.models.windows_updates.content_approval import ContentApproval
from msgraph_beta.generated.models.windows_updates.compliance_change_rule import ComplianceChangeRule
from msgraph_beta.generated.models.windows_updates.content_approval_rule import ContentApprovalRule
from msgraph_beta.generated.models.windows_updates.driver_update_filter import DriverUpdateFilter
from msgraph_beta.generated.models.windows_updates.deployment_settings import DeploymentSettings
from msgraph_beta.generated.models.windows_updates.schedule_settings import ScheduleSettings
from msgraph_beta.generated.models.windows_updates.rate_driven_rollout_settings import RateDrivenRolloutSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UpdatePolicy(
	odata_type = "#microsoft.graph.windowsUpdates.updatePolicy",
	audience = DeploymentAudience(
		id = "8c4eb1eb-d7a3-4633-8e2f-f926e82df08e",
	),
	compliance_changes = [
		ContentApproval(
			odata_type = "#microsoft.graph.windowsUpdates.contentApproval",
		),
	],
	compliance_change_rules = [
		ContentApprovalRule(
			odata_type = "#microsoft.graph.windowsUpdates.contentApprovalRule",
			content_filter = DriverUpdateFilter(
				odata_type = "#microsoft.graph.windowsUpdates.driverUpdateFilter",
			),
			duration_before_deployment_start = "P7D",
		),
	],
	deployment_settings = DeploymentSettings(
		odata_type = "microsoft.graph.windowsUpdates.deploymentSettings",
		schedule = ScheduleSettings(
			gradual_rollout = RateDrivenRolloutSettings(
				odata_type = "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",
				duration_between_offers = "P1D",
				additional_data = {
						"device_per_offer" : 1000,
				}
			),
		),
	),
)

result = await graph_client.admin.windows.updates.update_policies.post(request_body)


```