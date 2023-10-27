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



provisioningPolicies, err := graphClient.DeviceManagement().VirtualEndpoint().ProvisioningPolicies().ByCloudPcProvisioningPolicyId("cloudPcProvisioningPolicy-id").Get(context.Background(), nil)


```