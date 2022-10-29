---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.TeamsRequestBuilderGetQueryParameters{
	Filter: "displayName eq 'A Contoso Team'",
	Select: [] string {"id","description"},
}
configuration := &graphconfig.TeamsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Teams().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```