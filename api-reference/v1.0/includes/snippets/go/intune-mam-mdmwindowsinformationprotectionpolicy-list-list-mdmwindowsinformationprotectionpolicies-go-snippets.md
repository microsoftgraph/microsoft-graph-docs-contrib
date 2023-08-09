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



mdmWindowsInformationProtectionPolicies, err := graphClient.DeviceAppManagement().MdmWindowsInformationProtectionPolicies().Get(context.Background(), nil)


```