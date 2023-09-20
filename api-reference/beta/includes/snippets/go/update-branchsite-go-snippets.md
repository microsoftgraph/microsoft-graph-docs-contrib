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


requestBody := graphmodelsnetworkaccess.NewBranchSite()
name := "My updated branch"
requestBody.SetName(&name) 

branches, err := graphClient.NetworkAccess().Connectivity().Branches().ByBranchSiteId("branchSite-id").Patch(context.Background(), requestBody, nil)


```