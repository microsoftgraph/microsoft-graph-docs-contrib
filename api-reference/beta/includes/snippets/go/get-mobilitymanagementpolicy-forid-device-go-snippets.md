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



mobileDeviceManagementPolicies, err := graphClient.Policies().MobileDeviceManagementPolicies().ByMobilityManagementPolicyId("mobilityManagementPolicy-id").Get(context.Background(), nil)


```