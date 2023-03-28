---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestCount := true
requestConsistencyLevel := "eventual"
requestFilter := "endsWith(mail,'@contoso.com')"

requestParameters := &graphconfig.UsersRequestBuilderGetQueryParameters{
	Count: &requestCount,
	ConsistencyLevel: &requestConsistencyLevel,
	Filter: &requestFilter,
}
configuration := &graphconfig.UsersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Users().Get(context.Background(), configuration)


```