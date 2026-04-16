---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewWorkHoursAndLocationsSetting()
maxSharedWorkLocationDetails := graphmodels.APPROXIMATE_MAXWORKLOCATIONDETAILS 
requestBody.SetMaxSharedWorkLocationDetails(&maxSharedWorkLocationDetails) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
workHoursAndLocations, err := graphClient.Me().Settings().WorkHoursAndLocations().Patch(context.Background(), requestBody, nil)


```