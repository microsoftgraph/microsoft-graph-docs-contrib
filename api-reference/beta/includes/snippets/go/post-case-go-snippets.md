---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewCase()
displayName := "My Case 1"
requestBody.SetDisplayName(&displayName)
options := &msgraphsdk.CasesRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Compliance().Ediscovery().Cases().Post(options)


```