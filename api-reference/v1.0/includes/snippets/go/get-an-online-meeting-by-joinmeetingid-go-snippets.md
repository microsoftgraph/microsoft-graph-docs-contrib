---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "joinMeetingIdSettings/joinMeetingId eq '1234567890'"

requestParameters := &graphconfig.MeOnlineMeetingsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.MeOnlineMeetingsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().OnlineMeetings().Get(context.Background(), configuration)


```