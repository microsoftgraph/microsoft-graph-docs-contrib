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


requestBody := graphmodels.NewClaimsMappingPolicy()
displayName := "UpdateClaimsPolicy"
requestBody.SetDisplayName(&displayName) 

claimsMappingPolicies, err := graphClient.Policies().ClaimsMappingPolicies().ByClaimsMappingPolicyId("claimsMappingPolicy-id").Patch(context.Background(), requestBody, nil)


```