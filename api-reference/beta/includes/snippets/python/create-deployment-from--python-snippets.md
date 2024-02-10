---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.deployment import Deployment
from msgraph.generated.models.catalog_content import CatalogContent
from msgraph.generated.models.feature_update_catalog_entry import FeatureUpdateCatalogEntry
from msgraph.generated.models.deployment_settings import DeploymentSettings
from msgraph.generated.models.schedule_settings import ScheduleSettings
from msgraph.generated.models.rate_driven_rollout_settings import RateDrivenRolloutSettings
from msgraph.generated.models.monitoring_settings import MonitoringSettings
from msgraph.generated.models.monitoring_rule import MonitoringRule

graph_client = GraphServiceClient(credentials, scopes)

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
				additional_data = {
						"device_per_offer" : 100,
				}
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