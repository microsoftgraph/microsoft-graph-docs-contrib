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

requestParameters := &graphonpremisespublishingprofiles.ItemPublishedResourcesRequestBuilderGetQueryParameters{
	Expand: [] string {"agentGroups"},
}
configuration := &graphonpremisespublishingprofiles.ItemPublishedResourcesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
publishedResources, err := graphClient.OnPremisesPublishingProfiles().ByOnPremisesPublishingProfileId("onPremisesPublishingProfile-id").PublishedResources().Get(context.Background(), configuration)


```