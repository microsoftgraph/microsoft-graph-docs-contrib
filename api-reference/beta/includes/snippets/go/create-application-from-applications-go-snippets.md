---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewApplication()
displayName := "Display name"
requestBody.SetDisplayName(&displayName)
options := &msgraphsdk.ApplicationsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Applications().Post(options)


```