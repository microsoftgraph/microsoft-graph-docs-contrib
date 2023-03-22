---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestFilter := "startsWith(subject,'All')"

requestParameters := &graphconfig.MeCalendarEventsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.MeCalendarEventsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Calendar().Events().Get(context.Background(), configuration)


```