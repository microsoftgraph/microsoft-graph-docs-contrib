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



permissionsCreepIndexDistributions, err := graphClient.IdentityGovernance().PermissionsAnalytics().Aws().PermissionsCreepIndexDistributions().Get(context.Background(), nil)


```