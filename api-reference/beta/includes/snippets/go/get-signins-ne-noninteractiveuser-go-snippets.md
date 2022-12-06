---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.SignInsRequestBuilderGetQueryParameters{
	Filter: "(signInEventTypes/any(t:%20t%20ne%20'interactiveUser'))",
	OrderBy: "createdDateTime%20DESC",
	Top: 10,
}
options := &msgraphsdk.SignInsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
result, err := graphClient.AuditLogs().SignIns().GetWithRequestConfigurationAndResponseHandler(options, nil)


```