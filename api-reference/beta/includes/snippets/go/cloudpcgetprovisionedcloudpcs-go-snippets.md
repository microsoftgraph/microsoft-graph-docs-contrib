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



getProvisionedCloudPCs(groupId='{groupId}',servicePlanId='{servicePlanId}'), err := graphClient.DeviceManagement().VirtualEndpoint().CloudPCs().GetProvisionedCloudPCs(groupId='{groupId}',servicePlanId='{servicePlanId}')().Get(context.Background(), nil)


```