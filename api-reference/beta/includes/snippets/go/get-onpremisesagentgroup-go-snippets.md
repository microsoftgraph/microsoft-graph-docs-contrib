---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphonpremisespublishingprofiles "github.com/microsoftgraph/msgraph-beta-sdk-go/onpremisespublishingprofiles"
	  //other-imports
)

requestParameters := &graphonpremisespublishingprofiles.ItemAgentGroupsItemRequestBuilderGetQueryParameters{
	Expand: [] string {"publishedResources","agents"},
}
configuration := &graphonpremisespublishingprofiles.ItemAgentGroupsItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
agentGroups, err := graphClient.OnPremisesPublishingProfiles().ByOnPremisesPublishingProfileId("onPremisesPublishingProfile-id").AgentGroups().ByOnPremisesAgentGroupId("onPremisesAgentGroup-id").Get(context.Background(), configuration)


```