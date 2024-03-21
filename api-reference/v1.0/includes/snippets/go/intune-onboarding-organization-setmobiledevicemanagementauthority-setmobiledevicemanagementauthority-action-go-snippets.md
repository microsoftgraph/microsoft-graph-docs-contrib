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



setMobileDeviceManagementAuthority, err := graphClient.Organization().ByOrganizationId("organization-id").SetMobileDeviceManagementAuthority().Post(context.Background(), nil)


```