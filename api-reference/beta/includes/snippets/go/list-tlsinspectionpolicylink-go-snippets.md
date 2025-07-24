---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/networkaccess"
	  //other-imports
)


requestFilter := "isof('microsoft.graph.networkaccess.securityProviderPolicyLink')"

requestParameters := &graphnetworkaccess.FilteringProfilesItemPoliciesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphnetworkaccess.FilteringProfilesItemPoliciesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
policies, err := graphClient.NetworkAccess().FilteringProfiles().ByFilteringProfileId("filteringProfile-id").Policies().Get(context.Background(), configuration)


```