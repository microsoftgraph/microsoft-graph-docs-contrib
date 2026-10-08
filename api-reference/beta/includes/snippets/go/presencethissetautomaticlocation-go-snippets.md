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

requestBody := graphusers.NewItemSetAutomaticLocationPostRequestBody()
workLocationType := graphmodels.OFFICE_WORKLOCATIONTYPE 
requestBody.SetWorkLocationType(&workLocationType) 
placeId := "eb706f15-137e-4722-b4d1-b601481d9251"
requestBody.SetPlaceId(&placeId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Me().Presence().SetAutomaticLocation().Post(context.Background(), requestBody, nil)


```