---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphusers.NewItemSetCurrentLocationPostRequestBody()
updateScope := graphmodels.CURRENTSEGMENT_WORKLOCATIONUPDATESCOPE 
requestBody.SetUpdateScope(&updateScope) 
workLocationType := graphmodels.REMOTE_WORKLOCATIONTYPE 
requestBody.SetWorkLocationType(&workLocationType) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Me().Settings().WorkHoursAndLocations().Occurrences().SetCurrentLocation().Post(context.Background(), requestBody, nil)


```