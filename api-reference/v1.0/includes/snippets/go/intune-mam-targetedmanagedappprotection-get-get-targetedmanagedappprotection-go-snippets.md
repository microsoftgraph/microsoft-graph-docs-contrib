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



managedAppPolicies, err := graphClient.DeviceAppManagement().ManagedAppPolicies().ByManagedAppPolicyId("managedAppPolicy-id").Get(context.Background(), nil)


```