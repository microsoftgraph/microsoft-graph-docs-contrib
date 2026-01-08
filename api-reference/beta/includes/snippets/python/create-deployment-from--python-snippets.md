---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.windows_updates.deployment import Deployment
from msgraph_beta.generated.models.windows_updates.catalog_content import CatalogContent
from msgraph_beta.generated.models.windows_updates.feature_update_catalog_entry import FeatureUpdateCatalogEntry
from msgraph_beta.generated.models.windows_updates.deployment_settings import DeploymentSettings
from msgraph_beta.generated.models.windows_updates.schedule_settings import ScheduleSettings
from msgraph_beta.generated.models.windows_updates.rate_driven_rollout_settings import RateDrivenRolloutSettings
from msgraph_beta.generated.models.windows_updates.monitoring_settings import MonitoringSettings
from msgraph_beta.generated.models.windows_updates.monitoring_rule import MonitoringRule
from msgraph_beta.generated.models.monitoring_signal import MonitoringSignal
from msgraph_beta.generated.models.monitoring_action import MonitoringAction
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Deployment(
	odata_type = "#microsoft.graph.windowsUpdates.deployment",
	content = CatalogContent(
		odata_type = "#microsoft.graph.windowsUpdates.catalogContent",
		catalog_entry = FeatureUpdateCatalogEntry(
			odata_type = "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry",
			id = "f341705b-0b15-4ce3-aaf2-6a1681d78606",
		),
	),
	settings = DeploymentSettings(
		odata_type = "microsoft.graph.windowsUpdates.deploymentSettings",
		schedule = ScheduleSettings(
			gradual_rollout = RateDrivenRolloutSettings(
				odata_type = "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",
				duration_between_offers = "P7D",
				devices_per_offer = 100,
			),
		),
		monitoring = MonitoringSettings(
			monitoring_rules = [
				MonitoringRule(
					signal = MonitoringSignal.Rollback,
					threshold = 5,
					action = MonitoringAction.PauseDeployment,
				),
			],
		),
	),
)

result = await graph_client.admin.windows.updates.deployments.post(request_body)


```