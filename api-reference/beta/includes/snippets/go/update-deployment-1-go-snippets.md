---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//windowsUpdates"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDeployment()
state := graphmodels.NewDeploymentState()
requestedValue := graphmodels.PAUSED_REQUESTEDDEPLOYMENTSTATEVALUE 
state.SetRequestedValue(&requestedValue) 
requestBody.SetState(state)

result, err := graphClient.Admin().Windows().Updates().Deployments().ByDeploymentId("deployment-id").Patch(context.Background(), requestBody, nil)


```