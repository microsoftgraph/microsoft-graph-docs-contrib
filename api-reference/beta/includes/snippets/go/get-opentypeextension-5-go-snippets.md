---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.MessagesRequestBuilderGetQueryParameters{
	Filter: "Extensions/any",
	Expand: "Extensions($filter=id%20eq%20'Com.Contoso.Referral')",
}
options := &msgraphsdk.MessagesRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.Me().Messages().Get(options);


```