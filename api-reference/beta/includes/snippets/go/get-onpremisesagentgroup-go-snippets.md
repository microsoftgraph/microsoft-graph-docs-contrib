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


requestParameters := &graphonpremisespublishingprofiles.OnPremisesPublishingProfileItemAgentGroupItemRequestBuilderGetQueryParameters{
	Expand: [] string {"publishedResources","agents"},
}
configuration := &graphonpremisespublishingprofiles.OnPremisesPublishingProfileItemAgentGroupItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

agentGroups, err := graphClient.OnPremisesPublishingProfiles().ByOnPremisesPublishingProfileId("onPremisesPublishingProfile-id").AgentGroups().ByOnPremisesAgentGroupId("onPremisesAgentGroup-id").Get(context.Background(), configuration)


```