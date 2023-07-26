---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelswindowsupdates "github.com/microsoftgraph/msgraph-beta-sdk-go/models/windowsupdates"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelswindowsupdates.NewDeployment()
state := graphmodelswindowsupdates.NewDeploymentState()
requestedValue := graphmodels.PAUSED_REQUESTEDDEPLOYMENTSTATEVALUE 
state.SetRequestedValue(&requestedValue) 
requestBody.SetState(state)

result, err := graphClient.Admin().Windows().Updates().Deployments().ByDeploymentId("deployment-id").Patch(context.Background(), requestBody, nil)


```