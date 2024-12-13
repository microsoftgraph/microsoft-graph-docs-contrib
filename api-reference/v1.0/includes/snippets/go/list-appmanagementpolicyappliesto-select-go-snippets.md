---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphpolicies "github.com/microsoftgraph/msgraph-sdk-go/policies"
	  //other-imports
)

requestParameters := &graphpolicies.AppManagementPoliciesItemAppliesToRequestBuilderGetQueryParameters{
	Select: [] string {"id","appId","displayName","createdDateTime"},
}
configuration := &graphpolicies.AppManagementPoliciesItemAppliesToRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
appliesTo, err := graphClient.Policies().AppManagementPolicies().ByAppManagementPolicyId("appManagementPolicy-id").AppliesTo().Get(context.Background(), configuration)


```