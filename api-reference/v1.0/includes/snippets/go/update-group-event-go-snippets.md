---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewEvent()
location := graphmodels.NewLocation()
displayName := "Conf Room 2"
location.SetDisplayName(&displayName) 
requestBody.SetLocation(location)

result, err := graphClient.Groups().ByGroupId("group-id").Calendar().Events().ByEventId("event-id").Patch(context.Background(), requestBody, nil)


```