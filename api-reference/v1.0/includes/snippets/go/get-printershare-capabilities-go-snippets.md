---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.PrintShareItemRequestBuilderGetQueryParameters{
	Select: [] string {"id","displayName","capabilities"},
}
configuration := &graphconfig.PrintShareItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Print().SharesById("printerShare-id").Get(context.Background(), configuration)


```