---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.MessagesRequestBuilderGetQueryParameters{
	Select: "sender,subject",
}
options := &msgraphsdk.MessagesRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.Me().Messages().Get(options);


```