---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewNamedLocation()
displayName := "Untrusted IP named location"
requestBody.SetDisplayName(&displayName)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.ipNamedLocation",
	"isTrusted": false,
	"ipRanges":  []Object {
	}
}
options := &msgraphsdk.NamedLocationsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Identity().ConditionalAccess().NamedLocations().Post(options)


```