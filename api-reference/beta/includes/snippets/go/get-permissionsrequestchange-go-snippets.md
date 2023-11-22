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



permissionsRequestChanges, err := graphClient.IdentityGovernance().PermissionsManagement().PermissionsRequestChanges().ByPermissionsRequestChangeId("permissionsRequestChange-id").Get(context.Background(), nil)


```