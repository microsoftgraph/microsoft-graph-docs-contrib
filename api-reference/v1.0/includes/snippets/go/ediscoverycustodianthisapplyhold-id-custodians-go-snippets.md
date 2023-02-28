---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewApplyHoldPostRequestBody()
ids := []string {
	"7f697316-43ed-48e1-977f-261be050db93",
	"b26888b3-e1f5-47c5-bdf2-33d1b90cb2e8",

}
requestBody.SetIds(ids)

graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").Custodians().MicrosoftGraphSecurityApplyHold().Post(context.Background(), requestBody, nil)


```