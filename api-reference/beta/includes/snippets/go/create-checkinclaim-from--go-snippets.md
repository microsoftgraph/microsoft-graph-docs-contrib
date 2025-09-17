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

requestBody := graphmodels.NewCheckInClaim()
calendarEventId := "040000008200E00074C5B7101A82E00800000000D02AC02D26EFDB010000000000000000100000005A18ADA04F0A24489AE13ED3CC367978"
requestBody.SetCalendarEventId(&calendarEventId) 
checkInMethod := graphmodels.VERIFIED_CHECKINMETHOD 
requestBody.SetCheckInMethod(&checkInMethod) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
checkIns, err := graphClient.Places().ByPlaceId("place-id").CheckIns().Post(context.Background(), requestBody, nil)


```