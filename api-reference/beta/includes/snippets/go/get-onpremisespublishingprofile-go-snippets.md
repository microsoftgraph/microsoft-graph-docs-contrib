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


requestParameters := &graphonpremisespublishingprofiles.OnPremisesPublishingProfileItemRequestBuilderGetQueryParameters{
	Expand: [] string {"publishedResources","agents","agentGroups"},
}
configuration := &graphonpremisespublishingprofiles.OnPremisesPublishingProfileItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

onPremisesPublishingProfiles, err := graphClient.OnPremisesPublishingProfiles().ByOnPremisesPublishingProfileId("onPremisesPublishingProfile-id").Get(context.Background(), configuration)


```