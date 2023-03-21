---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestSkip := int32(20)

requestParameters := &graphconfig.MeEventsRequestBuilderGetQueryParameters{
	Orderby: [] string {"createdDateTime"},
	Skip: &requestSkip,
}
configuration := &graphconfig.MeEventsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Events().Get(context.Background(), configuration)


```