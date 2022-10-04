---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSubscription()
expirationDateTime , err := time.Parse(time.RFC3339, "2016-11-22T18:23:45.9356913Z")
requestBody.SetExpirationDateTime(&expirationDateTime) 

result, err := graphClient.SubscriptionsById("subscription-id").Patch(context.Background(), requestBody, nil)


```