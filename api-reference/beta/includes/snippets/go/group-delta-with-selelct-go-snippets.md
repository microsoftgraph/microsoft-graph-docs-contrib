---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.DeltaRequestBuilderGetQueryParameters{
	Select: "displayName,description,mailNickname",
}
options := &msgraphsdk.DeltaRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.Groups().Delta()().Get(options)


```