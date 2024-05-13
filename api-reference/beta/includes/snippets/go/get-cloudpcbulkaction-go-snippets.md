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



bulkActions, err := graphClient.DeviceManagement().VirtualEndpoint().BulkActions().ByCloudPcBulkActionId("cloudPcBulkAction-id").Get(context.Background(), nil)


```