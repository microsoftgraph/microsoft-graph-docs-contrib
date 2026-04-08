---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphadmin "github.com/microsoftgraph/msgraph-beta-sdk-go/admin"
	  //other-imports
)


requestFilter := "isof('microsoft.graph.windowsUpdates.qualityUpdateRing')"

requestParameters := &graphadmin.WindowsUpdatesPoliciesItemRingsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphadmin.WindowsUpdatesPoliciesItemRingsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
rings, err := graphClient.Admin().Windows().Updates().Policies().ByPolicyId("policy-id").Rings().Get(context.Background(), configuration)


```