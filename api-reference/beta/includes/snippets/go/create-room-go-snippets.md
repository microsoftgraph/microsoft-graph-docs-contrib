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

requestBody := graphmodels.NewPlace()
displayName := "Conf Room 4/3.3G11"
requestBody.SetDisplayName(&displayName) 
parentId := "46ef7aed-5d94-4fd4-ae03-b333bc7a6955"
requestBody.SetParentId(&parentId) 
bookingType := graphmodels.STANDARD_BOOKINGTYPE 
requestBody.SetBookingType(&bookingType) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
places, err := graphClient.Places().Post(context.Background(), requestBody, nil)


```