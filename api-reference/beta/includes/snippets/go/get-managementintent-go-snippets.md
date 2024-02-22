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



managementIntents, err := graphClient.TenantRelationships().ManagedTenants().ManagementIntents().ByManagementIntentId("managementIntent-id").Get(context.Background(), nil)


```