---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestStartDateTime := "2019-04-08T09:00:00.0000000"
requestEndDateTime := "2019-04-30T09:00:00.0000000"

requestParameters := &graphconfig.MeEventItemInstancesRequestBuilderGetQueryParameters{
	StartDateTime: &requestStartDateTime,
	EndDateTime: &requestEndDateTime,
	Select: [] string {"subject","bodyPreview","seriesMasterId","type","recurrence","start","end"},
}
configuration := &graphconfig.MeEventItemInstancesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().EventsById("event-id").Instances().Get(context.Background(), configuration)


```