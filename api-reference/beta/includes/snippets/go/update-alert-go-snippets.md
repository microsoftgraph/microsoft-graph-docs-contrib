---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelshealthmonitoring "github.com/microsoftgraph/msgraph-beta-sdk-go/models/healthmonitoring"
	  //other-imports
)

requestBody := graphmodelshealthmonitoring.NewAlert()
state := graphmodels.RESOLVED_ALERTSTATE 
requestBody.SetState(&state) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
alerts, err := graphClient.Reports().HealthMonitoring().Alerts().ByAlertId("alert-id").Patch(context.Background(), requestBody, nil)


```