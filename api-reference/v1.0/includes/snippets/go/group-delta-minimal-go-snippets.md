---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "return=minimal")

requestParameters := &graphconfig.GroupsDelta()RequestBuilderGetQueryParameters{
	Select: [] string {"displayName","description","mailNickname"},
}
configuration := &graphconfig.GroupsDelta()RequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Groups().Delta().Get(context.Background(), configuration)


```