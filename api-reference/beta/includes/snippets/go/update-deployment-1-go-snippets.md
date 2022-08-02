---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewDeployment()
"@odata.type" := "#microsoft.graph.windowsUpdates.deployment"
requestBody.Set"@odata.type"(&"@odata.type") 
state := graphmodels.NewDeploymentState()
"@odata.type" := "microsoft.graph.windowsUpdates.deploymentState"
state.Set"@odata.type"(&"@odata.type") 
requestedValue := graphmodels.PAUSED_REQUESTEDDEPLOYMENTSTATEVALUE 
state.SetRequestedValue(&requestedValue) 
requestBody.SetState(state)

graphClient.Admin().Windows().Updates().DeploymentsById("deployment-id").Patch(requestBody)


```