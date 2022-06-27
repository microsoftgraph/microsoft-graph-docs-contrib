---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.ProfileRequestBuilderGetQueryParameters{
	Expand: "names($select=first,last),skills($select=displayName)",
}
options := &msgraphsdk.ProfileRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
result, err := graphClient.Me().Profile().GetWithRequestConfigurationAndResponseHandler(options, nil)


```