---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "assignedLicenses/any()"

requestParameters := &graphconfig.GroupsRequestBuilderGetQueryParameters{
	Select: [] string {"id","assignedLicenses"},
	Filter: &requestFilter,
	Expand: [] string {"members($select=id,displayName)"},
}
configuration := &graphconfig.GroupsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Groups().Get(context.Background(), configuration)


```