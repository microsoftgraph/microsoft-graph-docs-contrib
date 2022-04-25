---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewDeployment()
state := msgraphsdk.NewDeploymentState()
requestBody.SetState(state)
requestedValue := "paused"
state.SetRequestedValue(&requestedValue)
state.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.windowsUpdates.deploymentState",
}
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.windowsUpdates.deployment",
}
options := &msgraphsdk.DeploymentRequestBuilderPatchOptions{
	Body: requestBody,
}
deploymentId := "deployment-id"
graphClient.Admin().Windows().Updates().DeploymentsById(&deploymentId).Patch(options)


```