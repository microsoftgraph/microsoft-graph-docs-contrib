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



windowsProtectionStates, err := graphClient.TenantRelationships().ManagedTenants().WindowsProtectionStates().ByWindowsProtectionStateId("windowsProtectionState-id").Get(context.Background(), nil)


```