---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


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

tasks, err := graphClient.Print().TaskDefinitions().ByPrintTaskDefinitionId("printTaskDefinition-id").Tasks().ByPrintTaskId("printTask-id").Patch(context.Background(), requestBody, nil)


```