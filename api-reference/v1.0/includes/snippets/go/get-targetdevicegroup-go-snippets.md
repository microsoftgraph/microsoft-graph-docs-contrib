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



targetDeviceGroups, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").RemoteDesktopSecurityConfiguration().TargetDeviceGroups().ByTargetDeviceGroupId("targetDeviceGroup-id").Get(context.Background(), nil)


```