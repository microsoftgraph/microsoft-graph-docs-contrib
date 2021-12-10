---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.CalendarViewRequestBuilderGetQueryParameters{
	StartDateTime: "2017-01-01T19:00:00-08:00",
	EndDateTime: "2017-10-01T19:00:00.00-08:00",
}
headers := map[string]string{
	"Prefer": "outlook.body-content-type="text""
}
options := &msgraphsdk.CalendarViewRequestBuilderGetOptions{
	Q: requestParameters,
	H: headers,
}
groupId := "group-id"
result, err := graphClient.GroupsById(&groupId).CalendarView().Get(options)


```