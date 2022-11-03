---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"Prefer": "odata.maxpagesize=2",
}

requestStartdatetime := "2016-12-01T00:00:00Z"
requestEnddatetime := "2016-12-30T00:00:00Z"

requestParameters := &graphconfig.DeltaRequestBuilderGetQueryParameters{
	Startdatetime: &requestStartdatetime,
	Enddatetime: &requestEnddatetime,
}
configuration := &graphconfig.DeltaRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().CalendarView().Delta().Get(context.Background(), configuration)


```