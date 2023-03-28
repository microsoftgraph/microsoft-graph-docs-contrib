---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.MeProfileRequestBuilderGetQueryParameters{
	Expand: [] string {"names($select=first,last)","skills($select=displayName)"},
}
configuration := &graphconfig.MeProfileRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Profile().Get(context.Background(), configuration)


```