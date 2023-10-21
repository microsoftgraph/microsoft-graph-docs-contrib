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



forwardingProfiles, err := graphClient.NetworkAccess().Connectivity().Branches().ByBranchSiteId("branchSite-id").ForwardingProfiles().Get(context.Background(), nil)


```