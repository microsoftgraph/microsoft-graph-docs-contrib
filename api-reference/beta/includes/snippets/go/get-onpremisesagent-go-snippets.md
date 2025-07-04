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

requestParameters := &graphonpremisespublishingprofiles.ItemAgentsItemRequestBuilderGetQueryParameters{
	Expand: [] string {"agentGroups"},
}
configuration := &graphonpremisespublishingprofiles.ItemAgentsItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
agents, err := graphClient.OnPremisesPublishingProfiles().ByOnPremisesPublishingProfileId("onPremisesPublishingProfile-id").Agents().ByOnPremisesAgentId("onPremisesAgent-id").Get(context.Background(), configuration)


```