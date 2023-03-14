---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "return=minimal")

requestParameters := &graphconfig.UsersDelta()RequestBuilderGetQueryParameters{
	Select: [] string {"displayName","jobTitle","mobilePhone"},
}
configuration := &graphconfig.UsersDelta()RequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Users().Delta().Get(context.Background(), configuration)


```