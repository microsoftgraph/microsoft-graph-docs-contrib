---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"ConsistencyLevel": "eventual",
}
requestParameters := &graphconfig.GroupRequestBuilderGetQueryParameters{
	Count: true,
	OrderBy: [] string {"deletedDateTime asc"},
	Select: [] string {"id","DisplayName","deletedDateTime"},
}
configuration := &graphconfig.GroupRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Directory().DeletedItems().Group().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```