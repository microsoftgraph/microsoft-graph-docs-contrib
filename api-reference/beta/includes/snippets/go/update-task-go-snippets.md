---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewPrintTask()
status := graphmodels.NewPrintTaskStatus()
state := graphmodels.COMPLETED_PRINTTASKPROCESSINGSTATE 
status.SetState(&state) 
description := "completed"
status.SetDescription(&description) 
requestBody.SetStatus(status)

result, err := graphClient.Print().TaskDefinitions().ByTaskDefinitionId("printTaskDefinition-id").Tasks().ByTaskId("printTask-id").Patch(context.Background(), requestBody, nil)


```