---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewPrintTask()
status := graphmodels.NewPrintTaskStatus()
state := graphmodels.COMPLETED_PRINTTASKPROCESSINGSTATE 
status.SetState(&state) 
description := "completed"
status.SetDescription(&description) 
requestBody.SetStatus(status)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
tasks, err := graphClient.Print().TaskDefinitions().ByPrintTaskDefinitionId("printTaskDefinition-id").Tasks().ByPrintTaskId("printTask-id").Patch(context.Background(), requestBody, nil)


```