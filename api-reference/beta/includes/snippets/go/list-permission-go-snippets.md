---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.SitesRequestBuilderGetQueryParameters{
	Search: "%7Bquery%7D",
}
options := &msgraphsdk.SitesRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.Sites().Get(options);


```