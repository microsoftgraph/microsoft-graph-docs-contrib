---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.ListItemVersionRequestBuilderGetQueryParameters{
	Expand: [] string {"fields"},
}
configuration := &graphconfig.ListItemVersionRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.SitesById("site-id").ListsById("list-id").ItemsById("listItem-id").VersionsById("listItemVersion-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```