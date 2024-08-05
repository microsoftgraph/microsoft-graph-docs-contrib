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

requestBody := graphmodels.NewEvent()
location := graphmodels.NewLocation()
displayName := "Conf Room 2"
location.SetDisplayName(&displayName) 
requestBody.SetLocation(location)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
events, err := graphClient.Groups().ByGroupId("group-id").Calendar().Events().ByEventId("event-id").Patch(context.Background(), requestBody, nil)


```