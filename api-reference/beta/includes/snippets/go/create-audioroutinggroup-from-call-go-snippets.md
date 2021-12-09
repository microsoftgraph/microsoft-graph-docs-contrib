---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAudioRoutingGroup()
id := "oneToOne"
requestBody.SetId(&id)
routingMode := "oneToOne"
requestBody.SetRoutingMode(&routingMode)
requestBody.SetSources( []String {
	"632899f8-2ea1-4604-8413-27bd2892079f",
}
requestBody.SetReceivers( []String {
	"550fae72-d251-43ec-868c-373732c2704f",
}
options := &msgraphsdk.AudioRoutingGroupsRequestBuilderPostOptions{
	Body: requestBody,
}
callId := "call-id"
result, err := graphClient.Communications().CallsById(&callId).AudioRoutingGroups().Post(options)


```