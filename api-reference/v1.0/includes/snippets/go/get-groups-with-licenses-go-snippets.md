---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.GroupsRequestBuilderGetQueryParameters{
	Select: [] string {"id","assignedLicenses"},
	Filter: "assignedLicenses/any()",
}
configuration := &graphconfig.GroupsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Groups().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```