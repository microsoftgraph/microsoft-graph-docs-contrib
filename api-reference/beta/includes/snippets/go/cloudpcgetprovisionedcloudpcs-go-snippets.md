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



groupId := "{groupId}"
servicePlanId := "{servicePlanId}"
getProvisionedCloudPCs, err := graphClient.DeviceManagement().VirtualEndpoint().CloudPCs().GetProvisionedCloudPCsWithGroupIdWithServicePlanId(&groupId, &servicePlanId).Get(context.Background(), nil)


```