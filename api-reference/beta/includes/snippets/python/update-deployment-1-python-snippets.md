---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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