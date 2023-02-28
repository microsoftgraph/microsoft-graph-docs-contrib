---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewDismissPostRequestBody()
userIds := []string {
	"4628e7df-dff3-407c-a08f-75f08c0806dc",

}
requestBody.SetUserIds(userIds)

graphClient.IdentityProtection().RiskyUsers().MicrosoftGraphDismiss().Post(context.Background(), requestBody, nil)


```