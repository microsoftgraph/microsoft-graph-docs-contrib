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



subscriptionId := "{subscriptionId}"
getStorageAccounts, err := graphClient.DeviceManagement().VirtualEndpoint().Snapshots().GetStorageAccountsWithSubscriptionId(&subscriptionId).Get(context.Background(), nil)


```