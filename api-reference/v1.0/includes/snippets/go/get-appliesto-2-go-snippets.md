---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



result, err := graphClient.Policies().HomeRealmDiscoveryPolicies().ByHomeRealmDiscoveryPolicieId("homeRealmDiscoveryPolicy-id").AppliesTo().Get(context.Background(), nil)


```