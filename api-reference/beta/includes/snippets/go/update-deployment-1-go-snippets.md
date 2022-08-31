---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewDeployment()
state := graphmodels.NewDeploymentState()
requestedValue := graphmodels.PAUSED_REQUESTEDDEPLOYMENTSTATEVALUE 
state.SetRequestedValue(&requestedValue) 
requestBody.SetState(state)

graphClient.Admin().Windows().Updates().DeploymentsById("deployment-id").Patch(requestBody)


```