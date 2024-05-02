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



services, err := graphClient.Me().Settings().Storage().Quota().Services().ByServiceStorageQuotaBreakdownId("serviceStorageQuotaBreakdown-id").Get(context.Background(), nil)


```