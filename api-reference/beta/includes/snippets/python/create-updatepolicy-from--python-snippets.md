---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.update_policy import UpdatePolicy
from msgraph.generated.models.deployment_audience import DeploymentAudience
from msgraph.generated.models.compliance_change import ComplianceChange
from msgraph.generated.models.content_approval import ContentApproval
from msgraph.generated.models.compliance_change_rule import ComplianceChangeRule
from msgraph.generated.models.content_approval_rule import ContentApprovalRule
from msgraph.generated.models.driver_update_filter import DriverUpdateFilter
from msgraph.generated.models.deployment_settings import DeploymentSettings
from msgraph.generated.models.schedule_settings import ScheduleSettings
from msgraph.generated.models.rate_driven_rollout_settings import RateDrivenRolloutSettings

graph_client = GraphServiceClient(credentials, scopes)

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