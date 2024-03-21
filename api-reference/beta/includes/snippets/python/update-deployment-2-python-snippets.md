---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.deployment import Deployment
from msgraph.generated.models.deployment_settings import DeploymentSettings
from msgraph.generated.models.monitoring_settings import MonitoringSettings
from msgraph.generated.models.monitoring_rule import MonitoringRule

graph_client = GraphServiceClient(credentials, scopes)

request_body = Deployment(
	odata_type = "#microsoft.graph.windowsUpdates.deployment",
	settings = DeploymentSettings(
		odata_type = "microsoft.graph.windowsUpdates.deploymentSettings",
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

result = await graph_client.admin.windows.updates.deployments.by_deployment_id('deployment-id').patch(request_body)


```