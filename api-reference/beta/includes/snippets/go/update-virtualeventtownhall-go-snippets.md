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

requestBody := graphmodels.NewVirtualEventTownhall()
startDateTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2024-03-31T10:00:00"
startDateTime.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
startDateTime.SetTimeZone(&timeZone) 
requestBody.SetStartDateTime(startDateTime)
endDateTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2024-03-31T17:00:00"
endDateTime.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
endDateTime.SetTimeZone(&timeZone) 
requestBody.SetEndDateTime(endDateTime)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
townhalls, err := graphClient.Solutions().VirtualEvents().Townhalls().ByVirtualEventTownhallId("virtualEventTownhall-id").Patch(context.Background(), requestBody, nil)


```