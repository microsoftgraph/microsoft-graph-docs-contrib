---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewAuthorizationPolicy()
permissionGrantPolicyIdsAssignedToDefaultUserRole := []string {
	"managePermissionGrantsForSelf.microsoft-user-default-low",
}
requestBody.SetPermissionGrantPolicyIdsAssignedToDefaultUserRole(permissionGrantPolicyIdsAssignedToDefaultUserRole)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
authorizationPolicy, err := graphClient.Policies().AuthorizationPolicy().ByAuthorizationPolicyId("authorizationPolicy-id").Patch(context.Background(), requestBody, nil)


```