---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.MeEventItemRequestBuilderGetQueryParameters{
	Select: [] string {"subject","body","bodyPreview","organizer","attendees","start","end","location","locations"},
}
configuration := &graphconfig.MeEventItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().EventsById("event-id").Get(context.Background(), configuration)


```