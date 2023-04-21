---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSubscription()
expirationDateTime , err := time.Parse(time.RFC3339, "2016-03-22T11:00:00.0000000Z")
requestBody.SetExpirationDateTime(&expirationDateTime) 

result, err := graphClient.Subscriptions().BySubscriptionId("subscription-id").Patch(context.Background(), requestBody, nil)


```