---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

requestBody := graphmodelssecurity.NewIncidentTask()
status := graphmodels.COMPLETED_INCIDENTTASKSTATUS 
requestBody.SetStatus(&status) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
incidentTasks, err := graphClient.Security().IncidentTasks().ByIncidentTaskId("incidentTask-id").Patch(context.Background(), requestBody, nil)


```