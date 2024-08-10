```go
// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphgroups "github.com/microsoftgraph/msgraph-beta-sdk-go/groups"
	  //other-imports
)

requestFilter := "services/any(c:c/planId eq 113feb6c-3fe4-4440-bddc-54d774bf0318)"

requestParameters := &graphgroups.GroupItemUsageRightsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphgroups.GroupItemUsageRightsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
usageRights, err := graphClient.Groups().ByGroupId("group-id").CloudLicensing().UsageRights().Get(context.Background(), configuration)
```