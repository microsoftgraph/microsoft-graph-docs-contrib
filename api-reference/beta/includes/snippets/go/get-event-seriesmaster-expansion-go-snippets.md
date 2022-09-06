---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.EventRequestBuilderGetQueryParameters{
	Select: [] string {"subject","start","end","occurrenceId","exceptionOccurrences","cancelledOccurrences"},
	Expand: [] string {"exceptionOccurrences"},
}
configuration := &graphconfig.EventRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().EventsById("event-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```