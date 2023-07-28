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



graphClient.NetworkAccess().Connectivity().Branches().ByBrancheId("branchSite-id").DeviceLinks().ByDeviceLinkId("deviceLink-id").Delete(context.Background(), nil)


```