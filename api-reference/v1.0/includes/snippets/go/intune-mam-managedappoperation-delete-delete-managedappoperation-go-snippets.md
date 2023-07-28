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



graphClient.DeviceAppManagement().ManagedAppRegistrations().ByManagedAppRegistrationId("managedAppRegistration-id").Operations().ByOperationId("managedAppOperation-id").Delete(context.Background(), nil)


```