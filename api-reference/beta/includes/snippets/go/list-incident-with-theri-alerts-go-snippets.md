---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.IncidentsRequestBuilderGetQueryParameters{
	Expand: [] string {"alerts"},
}
configuration := &graphconfig.IncidentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Security().Incidents().Get(context.Background(), configuration)


```