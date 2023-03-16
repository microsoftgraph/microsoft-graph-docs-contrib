---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewDeleteTiIndicatorsByExternalIdPostRequestBody()
value := []string {
	"externalId-value1",
	"externalId-value2",

}
requestBody.SetValue(value)

result, err := graphClient.Security().TiIndicators().DeleteTiIndicatorsByExternalId().Post(context.Background(), requestBody, nil)


```