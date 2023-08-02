---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/models/networkaccess"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsnetworkaccess.NewDeviceLink()
name := "Backup Link"
requestBody.SetName(&name) 

deviceLinks, err := graphClient.NetworkAccess().Connectivity().Branches().ByBranchSiteId("branchSite-id").DeviceLinks().ByDeviceLinkId("deviceLink-id").Patch(context.Background(), requestBody, nil)


```