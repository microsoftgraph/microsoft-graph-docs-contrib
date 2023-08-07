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



exemptAppLockerFiles, err := graphClient.DeviceAppManagement().WindowsInformationProtectionPolicies().ByWindowsInformationProtectionPolicyId("windowsInformationProtectionPolicy-id").ExemptAppLockerFiles().Get(context.Background(), nil)


```