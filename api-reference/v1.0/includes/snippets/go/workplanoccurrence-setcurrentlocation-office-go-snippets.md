---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphusers.NewItemSetCurrentLocationPostRequestBody()
updateScope := graphmodels.CURRENTDAY_WORKLOCATIONUPDATESCOPE 
requestBody.SetUpdateScope(&updateScope) 
workLocationType := graphmodels.OFFICE_WORKLOCATIONTYPE 
requestBody.SetWorkLocationType(&workLocationType) 
placeId := "12345678-1234-1234-1234-123456789012"
requestBody.SetPlaceId(&placeId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Me().Settings().WorkHoursAndLocations().Occurrences().SetCurrentLocation().Post(context.Background(), requestBody, nil)


```