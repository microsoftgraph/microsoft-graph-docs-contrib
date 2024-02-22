---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.deployment import Deployment
from msgraph.generated.models.deployment_state import DeploymentState

graph_client = GraphServiceClient(credentials, scopes)

request_body = Deployment(
	odata_type = "#microsoft.graph.windowsUpdates.deployment",
	state = DeploymentState(
		odata_type = "microsoft.graph.windowsUpdates.deploymentState",
		requested_value = RequestedDeploymentStateValue.Paused,
	),
)

result = await graph_client.admin.windows.updates.deployments.by_deployment_id('deployment-id').patch(request_body)


```