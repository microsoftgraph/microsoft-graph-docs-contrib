---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewValueRequestBody()
requestBody.SetValue( []String {
	"externalId-value1",
	"externalId-value2",
}
result, err := graphClient.Security().TiIndicators().DeleteTiIndicatorsByExternalId().Post(requestBody)


```