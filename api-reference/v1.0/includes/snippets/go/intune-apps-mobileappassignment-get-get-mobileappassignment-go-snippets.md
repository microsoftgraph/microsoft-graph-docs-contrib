---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



assignments, err := graphClient.DeviceAppManagement().MobileApps().ByMobileAppId("mobileApp-id").Assignments().ByMobileAppAssignmentId("mobileAppAssignment-id").Get(context.Background(), nil)


```