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
enabledPreviewFeatures := []string {
	"assignGroupsToRoles",
}
requestBody.SetEnabledPreviewFeatures(enabledPreviewFeatures)

authorizationPolicy, err := graphClient.Policies().AuthorizationPolicy().ByAuthorizationPolicyId("authorizationPolicy-id").Patch(context.Background(), requestBody, nil)


```