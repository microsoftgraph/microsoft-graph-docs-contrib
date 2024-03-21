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



findings, err := graphClient.IdentityGovernance().PermissionsAnalytics().Azure().Findings().ByFindingId("finding-id").Get(context.Background(), nil)


```