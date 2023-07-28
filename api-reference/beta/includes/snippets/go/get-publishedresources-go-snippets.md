---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphonpremisespublishingprofiles "github.com/microsoftgraph/msgraph-beta-sdk-go/onpremisespublishingprofiles"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphonpremisespublishingprofiles.OnPremisesPublishingProfileItemPublishedResourcesRequestBuilderGetQueryParameters{
	Expand: [] string {"agentGroups"},
}
configuration := &graphonpremisespublishingprofiles.OnPremisesPublishingProfileItemPublishedResourcesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.OnPremisesPublishingProfiles().ByOnPremisesPublishingProfileId("onPremisesPublishingProfile-id").PublishedResources().Get(context.Background(), configuration)


```