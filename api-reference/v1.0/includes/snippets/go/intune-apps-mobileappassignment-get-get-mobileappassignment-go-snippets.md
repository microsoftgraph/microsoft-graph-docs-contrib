---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



result, err := graphClient.DeviceAppManagement().MobileApps().ByMobileAppId("mobileApp-id").Assignments().ByAssignmentId("mobileAppAssignment-id").Get(context.Background(), nil)


```