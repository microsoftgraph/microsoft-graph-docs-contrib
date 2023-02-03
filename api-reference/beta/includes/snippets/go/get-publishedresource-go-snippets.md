---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.OnPremisesPublishingProfileItemPublishedResourceItemRequestBuilderGetQueryParameters{
	Expand: [] string {"agentGroups"},
}
configuration := &graphconfig.OnPremisesPublishingProfileItemPublishedResourceItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.OnPremisesPublishingProfilesById("onPremisesPublishingProfile-id").PublishedResourcesById("publishedResource-id").Get(context.Background(), configuration)


```