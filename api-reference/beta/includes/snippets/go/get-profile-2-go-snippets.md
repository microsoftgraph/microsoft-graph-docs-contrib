---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.ProfileRequestBuilderGetQueryParameters{
	Expand: [] string {"names($select=first,last)","skills($select=displayName)"},
}
configuration := &graphconfig.ProfileRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Profile().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```