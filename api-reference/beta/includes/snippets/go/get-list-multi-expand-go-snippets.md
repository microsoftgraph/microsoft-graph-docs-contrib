---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.ListRequestBuilderGetQueryParameters{
	Select: [] string {"name","lastModifiedDateTime"},
	Expand: [] string {"columns(select=name,description)","items",")"},
}
configuration := &graphconfig.ListRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.SitesById("site-id").ListsById("list-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```