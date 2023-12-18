---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").ClaimsMappingPolicies().ByClaimsMappingPolicyId("claimsMappingPolicy-id").Ref().Delete(context.Background(), nil)


```