---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "assignedLicenses/any"

requestParameters := &graphconfig.UsersRequestBuilderGetQueryParameters{
	Select: [] string {"id","mail","assignedLicenses"},
	Filter: &requestFilter,
}
configuration := &graphconfig.UsersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Users().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```