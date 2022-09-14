---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "definitions/any"

requestParameters := &graphconfig.TeamTemplatesRequestBuilderGetQueryParameters{
	Expand: [] string {"definitions"},
	Filter: &requestFilter,
}
configuration := &graphconfig.TeamTemplatesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Teamwork().TeamTemplates().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```