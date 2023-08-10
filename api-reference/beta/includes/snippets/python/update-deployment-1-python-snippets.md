---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Deployment()
request_body.@odata_type = '#microsoft.graph.windowsUpdates.deployment'

state = DeploymentState()
state.@odata_type = 'microsoft.graph.windowsUpdates.deploymentState'

state.requestedvalue(RequestedDeploymentStateValue.Paused('requesteddeploymentstatevalue.paused'))


request_body.state = state



result = await client.admin.windows.updates.deployments.by_deployment_id('deployment-id').patch(request_body = request_body)


```