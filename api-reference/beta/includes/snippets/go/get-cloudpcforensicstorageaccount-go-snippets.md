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



getStorageAccounts(subscriptionId='{subscriptionId}'), err := graphClient.DeviceManagement().VirtualEndpoint().Snapshots().GetStorageAccounts(subscriptionId='{subscriptionId}')().Get(context.Background(), nil)


```