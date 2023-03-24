---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

headers := abstractions.NewRequestHeaders()
headers.Add("ConsistencyLevel", "eventual")


requestCount := true
requestFilter := "hasMembersWithLicenseErrors eq true"

requestParameters := &graphconfig.GroupsRequestBuilderGetQueryParameters{
	Count: &requestCount,
	Filter: &requestFilter,
	Select: [] string {"id","displayName"},
}
configuration := &graphconfig.GroupsRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Groups().Get(context.Background(), configuration)


```