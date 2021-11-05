---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewSubscription()
expirationDateTime, err := time.Parse(time.RFC3339, "2016-11-22T18:23:45.9356913Z")
requestBody.SetExpirationDateTime(&expirationDateTime)
options := &msgraphsdk.SubscriptionRequestBuilderPatchOptions{
	Body: requestBody,
}
subscriptionId := "subscription-id"
graphClient.SubscriptionsById(&subscriptionId).Patch(options);


```