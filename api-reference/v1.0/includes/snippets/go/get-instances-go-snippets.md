---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.InstancesRequestBuilderGetQueryParameters{
	StartDateTime: "2019-04-08T09:00:00.0000000",
	EndDateTime: "2019-04-30T09:00:00.0000000",
	Select: "subject,bodyPreview,seriesMasterId,type,recurrence,start,end",
}
options := &msgraphsdk.InstancesRequestBuilderGetOptions{
	Q: requestParameters,
}
eventId := "event-id"
result, err := graphClient.Me().EventsById(&eventId).Instances().Get(options)


```