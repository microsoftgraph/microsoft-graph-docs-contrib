---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAuthorizationPolicy()
permissionGrantPolicyIdsAssignedToDefaultUserRole := []string {
	"managePermissionGrantsForSelf.microsoft-user-default-low",
}
requestBody.SetPermissionGrantPolicyIdsAssignedToDefaultUserRole(permissionGrantPolicyIdsAssignedToDefaultUserRole)

authorizationPolicy, err := graphClient.Policies().AuthorizationPolicy().ByAuthorizationPolicyId("authorizationPolicy-id").Patch(context.Background(), requestBody, nil)


```