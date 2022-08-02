---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewGetPresencesByUserIdPostRequestBody()
ids := []string {
	"fa8bf3dc-eca7-46b7-bad1-db199b62afc3",
	"66825e03-7ef5-42da-9069-724602c31f6b",

}
requestBody.SetIds(ids)

result, err := graphClient.Communications().GetPresencesByUserId().Post(requestBody)


```