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



deviceCompliancePolicySettingStateSummaries, err := graphClient.TenantRelationships().ManagedTenants().DeviceCompliancePolicySettingStateSummaries().Get(context.Background(), nil)


```