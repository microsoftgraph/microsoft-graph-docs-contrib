---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewNamedLocation()
displayName := "Untrusted named location with only IPv4 address"
requestBody.SetDisplayName(&displayName)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.ipNamedLocation",
	"isTrusted": false,
	"ipRanges":  []Object {
	}
}
options := &msgraphsdk.NamedLocationRequestBuilderPatchOptions{
	Body: requestBody,
}
namedLocationId := "namedLocation-id"
graphClient.Identity().ConditionalAccess().NamedLocationsById(&namedLocationId).Patch(options)


```