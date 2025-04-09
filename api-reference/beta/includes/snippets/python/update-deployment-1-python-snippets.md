---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.windows_updates.deployment import Deployment
from msgraph_beta.generated.models.windows_updates.deployment_state import DeploymentState
from msgraph_beta.generated.models.requested_deployment_state_value import RequestedDeploymentStateValue
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Deployment(
	odata_type = "#microsoft.graph.windowsUpdates.deployment",
	state = DeploymentState(
		odata_type = "microsoft.graph.windowsUpdates.deploymentState",
		requested_value = RequestedDeploymentStateValue.Paused,
	),
)

result = await graph_client.admin.windows.updates.deployments.by_deployment_id('deployment-id').patch(request_body)


```