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



branches, err := graphClient.NetworkAccess().Connectivity().Branches().ByBranchSiteId("branchSite-id").Get(context.Background(), nil)


```