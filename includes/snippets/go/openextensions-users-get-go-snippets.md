---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.MeRequestBuilderGetQueryParameters{
	Select: [] string {"id","displayName","mail","mobilePhone"},
	Expand: [] string {"extensions"},
}
configuration := &graphconfig.MeRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Get(context.Background(), configuration)


```